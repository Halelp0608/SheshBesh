<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="onlineUsers.aspx.cs" Inherits="SheshBesh.onlineUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--head-->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <style>

/*==============================*/
/*====== siderbar user profile =====*/
/*==============================*/

.userprofile {
	width: 100%;
	float: left;
	clear: both;
	margin: 40px auto; 
}
.userprofile .userpic {
	height: 100px;
	width: 100px;
	clear: both;
	margin: 0 auto;
	display: block;
	border-radius: 100%;
	box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	position: relative; 
}
.userprofile .userpic .userpicimg {
	height: auto;
	width: 100%;
	border-radius: 100%;
}
.username {
	font-weight: 400;
	font-size: 20px;
	line-height: 20px;
	color: #000000;
	margin-top: 20px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.username+p {
	color: #607d8b;
	font-size: 13px;
	line-height: 15px;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.userprofile.small {
	width: auto;
	clear: both;
	margin: 0px auto;
}
.userprofile.small .userpic {
	height: 40px;
	width: 40px;
	margin: 0 10px 0 0;
	display: block;
	border-radius: 100%;
	box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0px 3px 10px 0 rgba(0, 0, 0, 0.15);
	position: relative;
	float: left;
}
.userprofile.small .textcontainer {
	float: left;
	max-width: 100px;
	padding: 0
}
.userprofile.small .userpic .userpicimg {
	min-height: 100%;
	width: 100%;
	border-radius: 100%;
}
.userprofile.small .username {
	font-weight: 400;
	font-size: 16px;
	line-height: 21px;
	color: #000000;
	margin: 0px;
	float: left;
	width: 100%;
}
.userprofile.small .username+p {
	color: #607d8b;
	font-size: 13px;
	float: left;
	width: 100%;
	margin: 0;
}

.panel-default>.panel-heading {
    color: #607D8B;
    background-color: #ffffff;
    font-weight: 400;
    font-size: 15px;
    border-radius: 0;
    /*border-color: #e1eaef;*/
}

.page-header.small {
    position: relative;
    line-height: 22px;
    font-weight: 400;
    font-size: 20px;
}

.btn  {
	
    font-size: 17px;
	text-align:center;
	color: #dd3535;
}

.panel {
    box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
    -moz-box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
    -webkit-box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
    box-shadow: 0px 2px 10px 0 rgba(0, 0, 0, 0.05);
    transition: all ease 0.5s;
    -moz-transition: all ease 0.5s;
    -webkit-transition: all ease 0.5s;
    transition: all ease 0.5s;
    /*margin-bottom: 35px;
    border-radius: 0px;*/
    position: relative;
    border: 0;
    display: inline-block;
    width: 100%;
	background-color: #dd3535;
}

.panel-footer {
    padding: 10px 15px;
    background-color: #ffffff;
    color: #607d8b;
	text-align:center;
}

.panel-red.userlist p a {
    color: rgba(255, 255, 255, 0.8);
}

.b{
	border:3px solid;
	border-color:red;
}

.start{
	font-family: 'Mystical Woods';
	position: center;
	margin: 7px;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--body-->
	<div class="col-lg-12 mb-4 text-center start">
		<h3>Who plays agnist you?</h3>
	</div>
	<div class="container">
	<div class="row">
      <div class="col-lg-3 col-md-4 col-sm-6">
        <div class="panel panel-red userlist">
          <div class="panel-body text-center">
            <div class="userprofile">
              <div class="userpic"> <img src="src/flamingo.jpg" class="userpicimg"> </div>
              <h1 class="username">John Doe</h1>
              <p>New York, USA</p>
            </div>
        
          </div>
          <div class="panel-footer b"> <a href="#" class="btn btn-link">Connect</a></div>
        </div>
      </div>
    </div>
    </div>
  
</asp:Content>
