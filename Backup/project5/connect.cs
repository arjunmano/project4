using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using Oracle.DataAccess.Client;


namespace project5
{
    public class connect
    {
        OracleConnection conn = new OracleConnection("Data Source=pcat; User ID=system; Password=password; Persist Security Info= true ");
        OracleCommand cmd = new OracleCommand();
        public void addProductDetails(string pname, string prtype, string prvalue, string grand,  DateTime end, string desc, string wrkno,long cost)
        {
                conn.Open();
               
                cmd.CommandText = "addProduct";
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("p_PRODUCT_NAME", OracleDbType.Varchar2).Value = pname;
                cmd.Parameters.Add("p_PRODUCT_TYPE", OracleDbType.Varchar2).Value = prtype;
                cmd.Parameters.Add("p_PRODUCT_TYPE_VALUE", OracleDbType.Varchar2).Value = prvalue;
                cmd.Parameters.Add("p_GRANDFATHERED", OracleDbType.Varchar2).Value = grand;
                cmd.Parameters.Add("p_PROD_ENDDATE", OracleDbType.Date).Value = end;
                cmd.Parameters.Add("p_PRODUCT_DESC", OracleDbType.Varchar2).Value = desc;
                cmd.Parameters.Add("p_COST", OracleDbType.Long).Value = cost;
                cmd.Parameters.Add("p_WORK_REQST_ID", OracleDbType.Varchar2).Value = wrkno;
                
                cmd.ExecuteNonQuery();
              
                conn.Close();
               
               
        }


        public string login(string user, string pass)
        {
            OracleConnection conn1 = new OracleConnection("Data Source=pcat; User ID=system; Password=password; Persist Security Info= true ");
         
           cmd.CommandText="select work_id from login where username='"+user+"' and pass='"+pass+"'";
           cmd.Connection = conn;
           cmd.CommandType = CommandType.Text;
            conn.Open();
            OracleDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                return reader.GetString(0);
            }
            else
            {
                return "null";
            }
            reader.Close();
           conn1.Close();        
           
        }

        public void addpackage(string pname,string catid,string grand,string prtype,string desc,DateTime drop,string wrkno)
        {
            conn.Open();
            cmd.CommandText = "addPackage";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
              cmd.Parameters.Add("p_PACKAGE_NAME", OracleDbType.Varchar2).Value = pname;
              cmd.Parameters.Add("p_CATEGORY_ID", OracleDbType.Varchar2).Value = catid;
                cmd.Parameters.Add("p_GRANDFATHERED", OracleDbType.Varchar2).Value = grand;
                cmd.Parameters.Add("p_PACKAGE_TYPE", OracleDbType.Varchar2).Value = prtype;
                cmd.Parameters.Add(" p_PKG_DETAIL_DESCR", OracleDbType.Varchar2).Value = desc;
                cmd.Parameters.Add("p_PCR_DROP_DATE", OracleDbType.Date).Value = drop;
             cmd.Parameters.Add("p_WORK_REQST_ID", OracleDbType.Varchar2).Value = wrkno;

             cmd.ExecuteNonQuery();

             conn.Close();         
               
             
        }

        public void packagebundle(string pid,string bid)
        {
            conn.Open();
            cmd.CommandText = "addPackagebundle";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("p_PACKAGE_ID", OracleDbType.Varchar2).Value = pid;
            cmd.Parameters.Add("p_BUNDLE_TYPE_CD", OracleDbType.Varchar2).Value = bid;
            cmd.ExecuteNonQuery();
            conn.Close();   
           
        }
        public void discount(int did, string prtype)
        {
            conn.Open();
            cmd.CommandText = "adddiscountprocedure";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("p_DISCOUNT_ID", OracleDbType.Int32).Value = did;
            cmd.Parameters.Add("p_PRODUCT_TYPE", OracleDbType.Varchar2).Value = prtype;
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public void bundletype(string blevel,string desc,string wrkno,string type)
        {
            conn.Open();
            cmd.CommandText = "addbundletype";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("p_BUNDLE_LEVEL_CD", OracleDbType.Varchar2).Value = blevel;
            cmd.Parameters.Add("p_BUNDLE_DESC", OracleDbType.Varchar2).Value = desc;
            cmd.Parameters.Add("p_WORK_REQST_ID", OracleDbType.Varchar2).Value = wrkno;
            cmd.Parameters.Add("p_BUNDLE_TYPE", OracleDbType.Varchar2).Value = type;
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void bundleproduct(string btype,string pid,DateTime end,string bconz,string prtype,string wrkno)
        {
            conn.Open();
            cmd.CommandText = "addbundleproducts";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("p_BUNDLE_TYPE_CD", OracleDbType.Varchar2).Value = btype;
            cmd.Parameters.Add("p_PRODUCT_ID", OracleDbType.Varchar2).Value = pid;
            cmd.Parameters.Add("p_END_DATE", OracleDbType.Date).Value = end;
            cmd.Parameters.Add("p_BIZ_CON_IND", OracleDbType.Varchar2).Value = bconz;
            cmd.Parameters.Add("p_PRODUCT_TYPE", OracleDbType.Varchar2).Value = prtype;
            cmd.Parameters.Add("p_WORK_REQST_ID", OracleDbType.Varchar2).Value = wrkno;
            cmd.ExecuteNonQuery();
            conn.Close();    
        }
        public void filter(string pkid,string prid,string filter,DateTime end,string filtervalue,string active,string wrkno)
        {
            conn.Open();
            cmd.CommandText = "addpackagefilters";
            cmd.Connection = conn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("P_PACKAGE_ID", OracleDbType.Varchar2).Value = pkid;
            cmd.Parameters.Add("p_PRODUCT_ID", OracleDbType.Varchar2).Value = prid;
            cmd.Parameters.Add("P_FILTER_TYPE", OracleDbType.Varchar2).Value = filter;
            cmd.Parameters.Add("p_END_DATE", OracleDbType.Date).Value = end;            
            cmd.Parameters.Add("P_FILTER_VALUE1", OracleDbType.Varchar2).Value = filtervalue;
                cmd.Parameters.Add("P_IS_ACTIVE", OracleDbType.Varchar2).Value = active;
            cmd.Parameters.Add("p_WORK_REQST_ID", OracleDbType.Varchar2).Value = wrkno;
            cmd.ExecuteNonQuery();
            conn.Close();    
        }

        public string packageproduct(string pkid,string prid,string order,DateTime end,long min,long max,string grand,string wrkno)
        {
            try
            {
                conn.Open();
                cmd.CommandText = "addpackageproduct";
                cmd.Connection = conn;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("P_PACKAGE_ID", OracleDbType.Varchar2).Value = pkid;
                cmd.Parameters.Add("P_PRODUCT_ID", OracleDbType.Varchar2).Value = prid;
                cmd.Parameters.Add("p_ORDER_TYPE", OracleDbType.Varchar2).Value = order;
                cmd.Parameters.Add("p_END_DATE", OracleDbType.Date).Value = end;
                cmd.Parameters.Add("p_ITEM_MIN", OracleDbType.Int64).Value = min;
                cmd.Parameters.Add("p_ITEM_MAX", OracleDbType.Int64).Value = max;
                cmd.Parameters.Add("p_PKG_PROD_GRANDFATHERED", OracleDbType.Varchar2).Value = grand;
                cmd.Parameters.Add("p_WORK_REQST_ID", OracleDbType.Varchar2).Value = wrkno;
                cmd.ExecuteNonQuery();
                conn.Close();
                return " ";//new Exception().Message;
     
                
            }
            catch(Exception exp)
            {
                return exp.Message;
            }
          
        }

    }
}