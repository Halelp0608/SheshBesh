using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SheshBesh.App_Code
{
    public class DAL
    {
        OleDbConnection myConnection;
        const string FILE_NAME = "sheshBeshDB.accdb";
        private SqlCommand command = new SqlCommand();

        public DAL()
        {
            string location = HttpContext.Current.Server.MapPath("~/App_Data/" + FILE_NAME);
            string connectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; data source=" + location;
            myConnection = new OleDbConnection(connectionString);
        }

        //פעולה המפעילה את השאילתא שנשלחת על בסיס הנתונים
        public DataTable sendQuery(String sql)
        {
            DataTable datatable = new DataTable();
            try
            {
                myConnection.Open();
                string sSql = sql;
                OleDbCommand myCmd = new OleDbCommand(sSql, myConnection);
                OleDbDataAdapter adapter = new OleDbDataAdapter();
                adapter.SelectCommand = myCmd;
                adapter.Fill(datatable);
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                myConnection.Close();
            }
            return datatable;
        }

    }
}
