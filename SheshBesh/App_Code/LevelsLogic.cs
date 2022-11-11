using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SheshBesh.App_Code
{
    public class LevelsLogic
    {
        private DAL dal = new DAL();
        public DataTable getLevels()
        {
            string sql = "SELECT * FROM levels";
            return dal.sendQuery(sql);
        }

    }
}