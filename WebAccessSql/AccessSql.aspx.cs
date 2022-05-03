using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAccessSql
{
    public partial class AccessSql : System.Web.UI.Page
    {
        protected void btnQuery_Click(object sender, EventArgs e)
        {
            string connectionString = @"server=YT-AUGUS;database = BookShop;uid=sa;pwd=123456";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string sql = "select UserId,RealName from [User] where UserName=' " + this.txtUserName.Text + "'";
            SqlCommand cmm = new SqlCommand(sql, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count>0)
            {
                this.txtUserId.Text = ds.Tables[0].Rows[0]["UserId"].ToString();
                this.txtRealName.Text = ds.Tables[0].Rows[0]["RealName"].ToString();
            }
            connection.Close();
        }
    }
}