using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SheshBesh.App_Code
{   
    public class imagesLogic
    {
        DAL dal = new DAL();
        public DataTable getImages()
        {
            string sql = "SELECT * FROM images ";
            return dal.sendQuery(sql);
        }

        public DataTable getImage(int code)
        {
            string sql = $"SELECT * FROM images WHERE code={code}";
            return dal.sendQuery(sql);
        }

        public DataTable getImage(string src)
        {
            string sql = $"SELECT * FROM images WHERE src='{src}'";
            return dal.sendQuery(sql);
        }

        public void updateImage(int code, string nickname)
        {
            string sql = $"UPDATE users SET image = {code} WHERE nickName= {nickname}";
            dal.sendQuery(sql);
        }


    }
}