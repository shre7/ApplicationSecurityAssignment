using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationSecurityAssignment
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e){
            if (!!IsPostBack)
            {
                DataSet dset = new DataSet();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MYDBConnection"].ToString());
                try
                {
                    using (conn)
                    {
                        conn.Open();
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        SqlCommand cmd = new SqlCommand("SELECT userID,name,email,password,CreditCardInfo,DateOfBirth", conn);
                        cmd.CommandType = CommandType.Text;
                        adapter.SelectCommand = cmd;
                        adapter.Fill(dset);
                        gvUserInfo.DataSource = dset;
                        gvUserInfo.DataBind();
                    }
                }
                catch(Exception ex)
                {
                    throw new Exception(ex.ToString());
                }
            }

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            DataSet dset = new DataSet();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MYDBConnection"].ToString());
            using (conn)
            {
                if (txtUserID.Text != string.Empty)
                {
                    conn.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    string sqlQuery = string.Format("SELECT userID,name, email FROM user_info WHERE userID ={0},password,Credit Card Info,Date Of Birth", txtUserID.Text);
                    SqlCommand cmd = new SqlCommand(sqlQuery, conn);
                    cmd.CommandType = CommandType.Text;
                    adapter.SelectCommand = cmd;
                    adapter.Fill(dset);
                    gvUserInfo.DataSource = dset;
                    gvUserInfo.DataBind();
                }
            }
        }
    }
}