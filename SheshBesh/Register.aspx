<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SheshBesh.Register" %>
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

.a{
    color: #ccc;
    font-weight: bold;
    font-size: 0.9rem;
}
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!--body-->
    <form runat="server">
    <div class="container">
    <div class="row py-5 mt-4 align-items-center">
        <!-- For Demo Purpose -->
        <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
            <img src="src/logo.jpg" class="img-fluid mb-3 d-none d-md-block" />
                   <h2>Create an Account</h2>
            <p class="font-italic text-muted mb-0">Sign in to win your friend in SheshBesh,  and turn to be the best player in the whole time!</p>
        </div>

        <!-- Registeration Form -->
        <div class="col-md-7 col-lg-6 ml-auto">
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

                    <!-- Email Address -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                                <i class="fa fa-envelope text-muted"></i>
                            </span>
                        </div>
                        <asp:TextBox ID="email" runat="server"
                         placeholder="Email Address" class="form-control bg-white border-left-0 border-md"   ></asp:TextBox>
                    </div>

                     <!-- Level -->
                    <div class="input-group col-lg-12 mb-4">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                               <i class="fas fa-medal"></i>  </span>
                                                        
                        </div>
                        <asp:DropDownList ID="level" runat="server"
                            class="form-control bg-white border-left-0 border-md a">
                        </asp:DropDownList>
                            <span class="input-group-text bg-white px-4 border-md border-right-0">
                               <i class="fa fa-sort"></i> </span>

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


                       <!-- Submit Button -->
                    <div class="form-group col-lg-12 mx-auto mb-0">
                        <asp:Button ID="submit" runat="server" OnClick="submit_Click"
                            class="btn btn-primary btn-block py-2" Text="Create your account" style="font-weight:bold"/>
                    </div>

                    <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                        <div class="border-bottom w-100 ml-5"></div>
                        <span class="px-2 small text-muted font-weight-bold text-muted"></span>
                        <div class="border-bottom w-100 mr-5"></div>
                    </div>

                    <div style="color:red;font-weight:700">
                        <asp:Label ID="problem" runat="server" Visible="false"><i class="fa fa-exclamation"></i>  The nickName already exsist, choose else</asp:Label>
                    </div>

                    <!-- Already Registered -->
                    <div class="text-center w-100">
                        <p class="text-muted font-weight-bold">Already Registered?
                            <a href="login.aspx" class="text-primary ml-2">Login</a></p>
                    </div>
                    
                </div>
     
        </div>
    </div>
</div>
</form>


</asp:Content>
