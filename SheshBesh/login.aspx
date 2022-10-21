<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SheshBesh.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <!--head-->

        <script>
        $(function () {
            $('input, select').on('focus', function () {
                $(this).parent().find('.input-group-text').css('border-color', '#80bdff');
            });
            $('input, select').on('blur', function () {
                $(this).parent().find('.input-group-text').css('border-color', '#ced4da');
            });
        });
        </script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <style>
        .border-md {
    border-width: 2px;
}

body {
    min-height: 100vh;
}

.form-control:not(select) {
    padding: 1.5rem 0.5rem;
}

select.form-control {
    height: 52px;
    padding-left: 0.5rem;
}

.form-control::placeholder {
    color: #ccc;
    font-weight: bold;
    font-size: 0.9rem;
}
.form-control:focus {
    box-shadow: none;
}
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--body-->

    <div class="container">
    <div class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img src="src/logo.jpg" class="img-fluid mb-3 d-none d-md-block" />
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
            <form runat="server">
                <div class="row">

                    <!-- nickName -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-user text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox ID="nickName" runat="server"
                        placeholder="nickName" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                    </div>

                    <!-- Password -->
                            <div class="input-group col-lg-12 mb-4">
                                <div class="input-group-prepend">
                                    <span class="input-group-text bg-white px-4 border-md border-right-0">
                                        <i class="fa fa-lock text-muted"></i>
                                    </span>
                                </div>
                                <asp:TextBox TextMode="Password" ID="password" runat="server" placeholder="Password" class="form-control bg-white border-left-0 border-md"></asp:TextBox>
                            </div>


                       <!-- Login Button -->
                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <asp:Button ID="sighnin" runat="server" 
                            class="btn btn-primary btn-block py-2" Text="Log in now" OnClick="sighnin_Click" style="font-weight:bold"/>
                    </div>

                    <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                        <div class="border-bottom w-100 ml-5"></div>
                        <span class="px-2 small text-muted font-weight-bold text-muted"></span>
                        <div class="border-bottom w-100 mr-5"></div>
                    </div>

                    <div style="color:red;font-weight:700">
                        <asp:Label ID="problem" runat="server" Visible="false"><i class="fa fa-exclamation"></i>  sorry, we can't find your account..</asp:Label>
                    </div>

                    <!-- not Registered -->
                    <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">Don't Registered?
                            <a href="Register.aspx" class="text-primary ml-2">Register</a></p>
                    </div>
                    
                </div>
     
            </form>
        </div>
    </div>
</div>

</asp:Content>
