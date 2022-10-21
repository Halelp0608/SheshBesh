<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="instructions.aspx.cs" Inherits="SheshBesh.instructions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--head-->
    <style>
        .details {
    color: darkgrey;
    font-weight: 800;
    }
        #img{
            position: absolute;
             right: 15%;
             width: 500px;
             height: 500px;
             margin: 50px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--body-->

    <div class="row py-5 mt-4 align-items-center">
        <h1 class="display-4 font-weight-normal text-center " style="font-family:'Mystical Woods'">How to play?</h1>

        <div class="col-md-8 pr-lg-7 mb-7 mb-md-0">
            <div class="col-lg-12 mb-4">
            <h5 class="details">The board:</h5>
            <p>There is 24 triangles to put on them the rocks,
                and on each triangle can be only rocks from the same color.
                Group of 2 rocks or more called “house”. If there is only a one, the other competitor can move his rock and get you out –temporary- from the game.
            </p>
            </div>
        <div class="col-md-8 pr-lg-7 mb-7 mb-md-0">
            <h5 class="details">How I move?</h5>
            <p>The players move by rolling 2 dices, the back move with clockwise ant the white move opposite. 
                You can choose how much rocks you want to move- one or two.<br> If in the dices shows the same number, you will need to move 4 times this number.
                <br> if you are got out in the game, you won’t be able to return playing until you will find a free triangle in the other competitor's place for your rock. 
            </p>
        </div>
        <div class="col-md-8 pr-lg-7 mb-7 mb-md-0">
            <h5 class="details">How I win?</h5>
            <p>When you are finished to move <strong>all</strong> your rocks to the other competitor’s place, you can move them out of the board(goes one step more than the last triangle).
                The first who move out all this rocks win! <br><strong>*Mars:</strong>  high level of winning,  you won but the other hasn’t already start to move out.
                <br> <strong>*Turkish-Mars:</strong> you won but the other has still rocks in your place/ out of the game. 
            </p>       
        </div>
        <div class="text-center">
            <a class="btn btn-outline-secondary" href="#">Let's play!</a>
        </div>
        </div>
           <img src="src/full-board.jpg" id="img" /></div>

</asp:Content>
