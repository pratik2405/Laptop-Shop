﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
.con{
    margin-top: 10px;
}
.container{
    margin-left:100px;
    width: 85%;
    background: #fff;
    border-radius: 6px;
    padding: 20px 60px 30px 40px;
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  }
  .container .content{
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  .container .content .left-side{
    width: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    margin-top: 15px;
    position: relative;
  }
  .content .left-side::before{
    content: '';
    position: absolute;
    height: 70%;
    width: 2px;
    right: -15px;
    top: 50%;
    transform: translateY(-50%);
    background: #afafb6;
  }
  .content .left-side .details{
    margin: 14px;
    text-align: center;
  }
  .content .left-side .details i{
    font-size: 30px;
    color: #3e2093;
    margin-bottom: 10px;
  }
  .content .left-side .details .topic{
    font-size: 28px;
    font-weight: 500;
  }
  .content .left-side .details .text-one,
  .content .left-side .details .text-two{
    font-size: 20px;
    color: Blue;
  }
  .container .content .right-side{
    width: 75%;
    margin-left: 75px;
  }
  .content .right-side .topic-text{
    font-size: 23px;
    font-weight: 600;
    color: #3e2093;
  }
 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="con"><h1 align="center" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bolder; font-style: normal; color: #000000; background-color: #FF9900;">Contact Us </h1></div>
    <div class="container">
        <div class="content" align="center">
          <div class="left-side">
            <div class="address details">
              <div class="topic">Address</div>
              <div class="text-one">Phaltan,Maharashtra, Mh56</div>
              <div class="text-two"> Ring rod, Phaltan, Maharashtra 415523 </div>
            </div>
            <div class="phone details">
             
              <div class="topic">Phone</div>
              <div class="text-one">+91 9049509418</div>
              <div class="text-two">+91 7709481061</div>
            </div>
            <div class="email details">
              
              <div class="topic">Email</div>
              <div class="text-one">onlinelaptopshop@gmail.com</div>
              <div class="text-two">info.princecomtuter01@gmail.com</div>
            </div>
          </div>
            </div>
        </div>
        </div>
      </div>
   
      <div clas="map">
      <h1 align="center" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bolder; font-style: normal; color: #000000; background-color: #FF9900;"> <span>Map</span> </h1>
      </div>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3794.7484632351056!2d74.43574443931763!3d17.990435983074043!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc3a53064934481%3A0x45447ab923f25f04!2sPrince%20Computer%20and%20Cafe!5e0!3m2!1sen!2sin!4v1712555629120!5m2!1sen!2sin" width="800" height="400" style="border:0; margin:2px 0 0 300px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</asp:Content>




