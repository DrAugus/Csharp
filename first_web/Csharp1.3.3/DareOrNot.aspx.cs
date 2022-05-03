using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Csharp1._3._3
{
    public partial class DareOrNot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(this.txtAnswer.Text=="Y")
            {
                this.lblResult.Text = "Smart";
            }
            else
            {
                this.lblResult.Text = "Stupid";
            }
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            this.rdoYes.Checked = false;
            this.rdoNo.Checked = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.lblContents.Text = "text: " + this.ddlChoose.Text + " ; ";
            this.lblContents.Text += " Index: " + this.ddlChoose.SelectedIndex.ToString() + " ; ";
            this.lblContents.Text += "value: " + this.ddlChoose.SelectedValue;
            this.lblContents.Text += " Item: " + this.ddlChoose.SelectedItem.Text;
        }

        protected void btnSubmit2_Click(object sender, EventArgs e)
        {
            this.lblResult2.Text = "[" + this.ddlProvince.SelectedItem.Text + "]";
            this.lblResult2.Text += "[" + this.txtPassword.Text + "]";
            if(this.rdoMan.Checked==true)
            {
                this.lblResult2.Text += "[" + this.rdoMan.Text + "]";
            }
            else
            {
                this.lblResult2.Text += "[" + this.rdoWomen.Text + "]";
            }
            if (this.chkMale.Checked == true) this.lblResult2.Text += "[" + this.chkMale.Text + "]";
            if (this.chkFemale.Checked == true) this.lblResult2.Text += "[" + this.chkFemale.Text + "]";
            if (this.chkAll.Checked == true) this.lblResult2.Text += "[" + this.chkAll.Text + "]";
            this.lblResult2.Text += "[" + this.hplBlog.Text + "]";
            this.lblResult2.Text += "[" + this.imgBook.ImageUrl + "]";
        }

        //protected void btnSubmit3_Click(object sender, EventArgs e)
        //{
        //    if (cvProjectID.IsValid && cvStart.IsValid && cvEnd.IsValid)
        //    {
        //        this.lblResult3.Text = this.txtProjectID.Text + ": " + this.txtStart.Text + ": " + this.txtEnd.Text;
        //    }
        //}

        protected void lblSubmit1_Click(object sender, EventArgs e)
        {
            if(rfvName.IsValid)
            {
                this.lblResult1.Text = " Hello " + this.txtName.Text;
            }
        }

        //protected void btnSubmit4_Click(object sender, EventArgs e)
        //{
        //    if(this.rvAge.IsValid)
        //    {
        //        this.lblResult4.Text = this.txtAge.Text;
        //    }
        //}

        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            string province = this.ddlProvince.Text;
            switch (province)
            {
                case "上海":Response.Write("你是上海人！");
                    break;
                case "北京":Response.Write("你是北京人！");
                    break;
                case "深圳":Response.Write("你是深圳人！");
                    break;
                default:Response.Write("你该努力了！！！");break;
            }
        }
    }
}