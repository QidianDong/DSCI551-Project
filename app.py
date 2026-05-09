import streamlit as st
import psycopg2
import pandas as pd
from app_logic import place_order

st.set_page_config(page_title="Flower Shop Admin", page_icon="💐", layout="wide")

st.markdown("""
    <style>
    div[data-testid="metric-container"] {
        background-color: #f8f9fa;
        border: 1px solid #e9ecef;
        padding: 15px;
        border-radius: 10px;
    }
    .stButton>button { width: 100%; border-radius: 5px; }
    </style>
    """, unsafe_allow_html=True)

DB_CONFIG = {
    "host": "localhost",
    "dbname": "flowershop",
    "user": "postgres",
    "password": "SS373",
    "port": "5432"
}

@st.cache_resource
def init_connection():
    return psycopg2.connect(**DB_CONFIG)

conn = init_connection()

st.title("💐 Flower Shop Business Intelligence")
st.markdown("---")

tab1, tab2, tab3, tab4 = st.tabs([
    "📊 Inventory Dashboard", 
    "🛒 POS Terminal", 
    "📈 Analytics & Reports", 
    "👥 CRM System"
])


with tab1:
    st.header("Real-time Inventory Monitoring")
    
    cur = conn.cursor()
    cur.execute("SELECT COUNT(*) FROM Inventory WHERE StockQuantity < 50;")
    low_stock = cur.fetchone()[0]
    st.metric("Critical Low Stock Items", f"{low_stock}", delta="Needs Attention", delta_color="inverse")

    df_inv = pd.read_sql("SELECT * FROM Inventory ORDER BY InventoryID;", conn)
    df_inv.columns = ['ID', 'Bouquet Name', 'Stock Level', 'Unit Price ($)']

    def style_stock(val):
        color = '#ff4b4b' if isinstance(val, int) and val < 50 else ''
        return f'color: {color}'

    st.dataframe(df_inv.style.map(style_stock, subset=['Stock Level']), use_container_width=True)

    st.markdown("---")
    st.subheader("📦 Stock Maintenance")
    st.write("Simulate manual restocking. Multiple clicks here will generate **Dead Tuples** in the database.")
    
    c1, c2, c3 = st.columns([1, 1, 2])
    with c1:
        m_id = st.number_input("Item ID to Restock", min_value=1, value=1)
    with c2:
        m_qty = st.number_input("Add Qty", min_value=1, value=10)
    with c3:
        st.write(" ") # Padding
        if st.button("➕ Execute Restock (Internal UPDATE)"):
            cur = conn.cursor()
            cur.execute("UPDATE Inventory SET StockQuantity = StockQuantity + %s WHERE InventoryID = %s;", (m_qty, m_id))
            conn.commit()
            st.toast(f"Stock Updated for ID {m_id}!")
            st.rerun()

with tab2:
    st.header("Process New Transaction")

    with st.form("pos_form"):
        col_a, col_b, col_c = st.columns(3)
        with col_a:
            c_id = st.number_input("Customer ID", min_value=1, value=55)
        with col_b:
            i_id = st.number_input("Bouquet ID", min_value=1, value=1)
        with col_c:
            qty = st.number_input("Quantity", min_value=1, value=2)
        
        pay_btn = st.form_submit_button("💳 Confirm Payment")

    if pay_btn:
        with st.spinner("Executing ACID Transaction..."):
            res = place_order(c_id, i_id, qty)
            if res:
                st.success(f"Transaction Success! Order ID: {res}")
                st.balloons()
            else:
                st.error("Transaction Aborted (Insufficient Stock). Check Rollback logs.")

with tab3:
    st.header("Sales Report")
    
    st.subheader("Sales Trend")
    global_query = """
    SELECT o.OrderID, c.FirstName || ' ' || c.LastName AS CustomerName, o.OrderDate, o.TotalAmount
    FROM Orders o
    JOIN Customers c ON o.CustomerID = c.CustomerID
    ORDER BY o.OrderID DESC
    LIMIT 300;
    """
    df_global = pd.read_sql(global_query, conn)
    
    if not df_global.empty:
        df_global.columns = ['Order ID', 'Customer Name', 'Order Date', 'Total Amount ($)']
        df_global['Date'] = pd.to_datetime(df_global['Order Date']).dt.date
        st.line_chart(df_global.groupby('Date')['Total Amount ($)'].sum())
        
        with st.expander("📂 View Detailed Order List"):
            st.dataframe(df_global.drop(columns=['Date']), use_container_width=True)

    st.markdown("---")
    
    st.subheader("Customer Specific Performance")
    target_cust = st.number_input("Enter Customer ID for specific report:", min_value=1, value=55)
    
    report_query = f"""
        SELECT o.OrderID, c.FirstName || ' ' || c.LastName as Customer, o.OrderDate, o.TotalAmount
        FROM Orders o 
        JOIN Customers c ON o.CustomerID = c.CustomerID
        WHERE o.CustomerID = {target_cust}
        ORDER BY o.OrderID DESC;
    """
    df_report = pd.read_sql(report_query, conn)
    
    if not df_report.empty:
        st.success(f"Found {len(df_report)} records. Backend maps this to an **Index Scan** on CustomerID.")
        
        df_report.columns = ['Order ID', 'Customer Name', 'Order Date', 'Total Amount ($)']
        df_report['Date'] = pd.to_datetime(df_report['Order Date']).dt.date
        
        st.line_chart(df_report.groupby('Date')['Total Amount ($)'].sum(), color="#ffaa00")
        
        st.dataframe(df_report.drop(columns=['Date']), use_container_width=True)
    else:
        st.warning("No records found for this customer.")

with tab4:
    st.header("Customer Database")
    df_cust = pd.read_sql("SELECT CustomerID, FirstName, LastName, Email FROM Customers LIMIT 50;", conn)
    st.dataframe(df_cust, use_container_width=True)