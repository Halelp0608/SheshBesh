using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SheshBesh.App_Code
{
    public class ProudactLogic
    {
       private DAL dal = new DAL();

        public DataTable getProudacts()
        {
            string sql = $"SELECT * FROM proudact";
            return dal.sendQuery(sql);
            

        }
    }
}