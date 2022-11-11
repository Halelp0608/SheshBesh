using System.Data;

namespace SheshBesh.App_Code
{
    public class UsersLogic
    {
        private DAL dal = new DAL();

        public void addNewUser(string nickName, string email, string password, int level)
        {

            string sql = $"INSERT INTO users VALUES('{nickName}','{email}','{password}',{level},2,0);";
            dal.sendQuery(sql);
        }

        public bool isUserExsist(string nickName)
        {
            string sql = $"SELECT * FROM users WHERE nickName='{nickName}';";
            DataTable dt = dal.sendQuery(sql);
            if (dt.Rows.Count > 0) return true;
            return false;
        }

        public bool isDetailsCorrect(string nickName, string password)
        {
            string sql = $"SELECT * FROM users WHERE nickName='{nickName}' AND password='{password}'";
            DataTable dt = dal.sendQuery(sql);
            if (dt.Rows.Count > 0) return true;
            return false;

        }

        public DataTable getUser(string nickName)
        {
            string sql = "SELECT users.nickName, users.email, users.password, levels.level, images.src, users.score" +
                "         FROM levels, images, users " +
                $"        WHERE levels.code = users.level AND images.code = users.image AND users.nickName='{nickName}'; ";
            return dal.sendQuery(sql);
        }

    }
}