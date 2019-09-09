<%--
=========================================================================================================
  Module      : 入荷通知メール登録ユーザコントロール(BodyProductArrivalMailRegister.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2012 All Rights Reserved.
=========================================================================================================
--%>
<%@ Control Language="C#" AutoEventWireup="true" Inherits="ProductArrivalMailRegisterUserControl" %>

<% if (this.IsRegisterSucceeded == false) {%>
<div id="divProductArrivalMail">
	<div class="divProductArrivalMail__innnar">
	<p class="di_text1">
	こちらのアイテムが入荷した際、メールにてお知らせします。<br />


	(通知期限：入荷通知メールの登録から3ヶ月）
	<!-- （通知期限：<%: DateTimeUtility.ToStringFromRegion(this.ExpiredDate, DateTimeUtility.FormatType.EndOfYearMonth1Letter) %>） -->
	</p>
	<!-- <span visible="<%# (this.IsLoggedIn == false) %>" runat="server" style="color: Red;">※会員の方はログインしてから登録すると、登録状況を後で確認できます。</span> -->


	<!-- <h3>メールアドレス</h3> -->


		<div class="divProductArrivalMail__innnar__section1">
			<div visible="<%# (this.IsLoggedIn && this.HasPcAddr) %>" runat="server" >
				<div class="pop_mail1"><asp:CheckBox id="cbUserPcAddr" runat="server" Checked="<%# (this.IsPcAddrRegistered || this.HasPcAddr) %>" />
					<label for="ctl00_ContentPlaceHolder1_ucBpamrArrival_cbUserPcAddr">登録済みメールアドレス</label>
				<p class="indentTxt"><%#: this.PcAddr %></p>
				</div>
			</div>
		</div>
		<div class="divProductArrivalMail__innnar__section2">
			<div visible="<%# (Constants.MOBILEOPTION_ENABLED && this.IsLoggedIn && this.HasMbAddr) %>" runat="server">
				<div class="pop_mail2"><asp:CheckBox id="cbUserMobileAddr" runat="server" Checked="<%# (Constants.MOBILEOPTION_ENABLED && (this.IsMbAddrRegistered || (this.HasPcAddr == false))) %>" />
				<label>登録済みメールアドレス</label>
				<p class="indentTxt"><%#: this.MbAddr %></p>
				</div>
			</div>
		</div>
		<div class="divProductArrivalMail__innnar__section3">
			<asp:CheckBox id="cbMailAddr" runat="server" Checked="<%# (this.IsLoggedIn == false) %>" Text="その他のメールアドレス"  />
			<asp:TextBox ID="tbMailAddr" runat="server" CssClass="mailAddr" placeholder="アドレスを入力してください" MaxLength="256" Width="200" />
			<asp:RadioButtonList ID="rblMailAddrKbn" RepeatLayout="UnorderedList" runat="server" />
			<% if (StringUtility.ToEmpty(this.ErrorMessage) != "") {%>
				<br /><span class="error_inline"><%: this.ErrorMessage %></span>
			<%} %>
		</div>
	<p class="btnClose">
		<asp:LinkButton ID="lbRegisterBtn" OnClick="lbRegister_Click" runat="server" class="btn btn-inverse">申し込む</asp:LinkButton>
	</p>
	<a class="divProductArrivalMail__innnar__close" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lbRequestArrivalMail2','')"><div class="my-parts"><span></span></div></a>
	</div>

</div>
<%} else {%>
<div id="divProductArrivalMail">
	<div class="divProductArrivalMail__innnar con">
		<h2 class="divProductArrivalMail__innnar__h2">入荷お知らせメールに<br class="sp_br">登録しました</h2>
		<p class="divProductArrivalMail__innnar__p"> 引き続きJAMAIS VU公式ブランドサイトでの<br class="pc_br">
			お買い物をお楽しみください。
			<% if(this.HasPcMailKbnResult) {%><%} %>
			<% if(this.HasMbMailKbnResult) {%><%} %>
			<% if(this.HasOtherMailKbnResult) {%><%} %>
		</p>
		<a class="divProductArrivalMail__innnar__close" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$lbRequestArrivalMail2','')"><div class="my-parts"><span></span></div></a>
	</div>
</div>
<%} %>
<style>
.di_text1{
	font-size: 14px;
	line-height: 2;

}
.th_1{
	margin: 25px 0 0px 0;
	font-size: 14px!important;
	letter-spacing: 0.08em;

}
input#ctl00_ContentPlaceHolder1_ucBpamrArrival_tbMailAddr {
    height: 40px;
}
ul#ctl00_ContentPlaceHolder1_ucBpamrArrival_rblMailAddrKbn{
	 display: none!important;
}
a#ctl00_ContentPlaceHolder1_ucBpamrArrival_lbRegisterBtn {
    background: #2E0E02!important;
    font-size: 14px;
    letter-spacing: 0.08em;
}
input#ctl00_ContentPlaceHolder1_ucBpamrArrival_tbMailAddr{
	padding: 0 0 0 15px;
}
.divProductArrivalMail__innnar__section1 {
    margin: 10px 0 15px;
}
input#ctl00_ContentPlaceHolder1_ucBpamrArrival_tbMailAddr {
    margin: 10px 0 0 30px !important;
    display: block;
}
.divProductArrivalMail__innnar {
/*    min-height: 300px;
    max-height: 385px;*/
    height: fit-content;
}

h2.divProductArrivalMail__innnar__h2 {
    font-size: 18px;
    margin-top: 25px;
    text-align: center;
    border: 0!important;
    margin-top: 56px!important;
    font-weight: bold;
    line-height: 0.08em;
}

p.divProductArrivalMail__innnar__p {
    font-size: 14px;
    line-height: 1.8;
    text-align: center;
}
.con {
    height: 230px!important;
    min-height: 240px;
}
.sp_br{
	display: none;
}
.pc_br{
	display: inline;
}

input[type=checkbox]{
	display: none;
}
input[type=checkbox] + label{
	padding-left: 28px;
	vertical-align: middle;
	position: relative;
	margin-right: 66px;
	font-size: 13px;
	letter-spacing: 0.08em;
	padding-top: 3px;
}

input[type=checkbox] + label::before{
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 20px;
	height: 20px;
	border: 1px solid #C0B6B3;
	border-radius: 3px;
	background: #fff;
	box-sizing: border-box;
}
input[type=checkbox]:checked + label::after{
	content: "";
    position: absolute;
    top: 2px;
    left: 2px;
    width: 16px;
    height: 15px;
    border-radius: 3px;
    background: url(../../Contents/ImagesPkg/common/check@2x.png);
    display: block;
    background-position: 0px 3px;
    background-size: 100%;
    background-repeat: no-repeat;
}
input[type=checkbox]:checked + label.on::after{
	content: "";
}
input {
	font-size: 13px;
	letter-spacing: 0.08em;
}
input::placeholder {
	font-size: 13px;
	letter-spacing: 0.08em;
	color: #C6C6C6;
}

p.indentTxt{
	font-size: 13px;
    letter-spacing: 0.08em;
    margin: 10px 0 0 30px !important;
}
@media (max-width: 768px){
	div#divProductArrivalMail {
	    padding: 0;
	}
	h2.divProductArrivalMail__innnar__h2 {
		font-size: 16px!important;
		margin-top: 0px!important;

	}
	#divProductArrivalMail .divProductArrivalMail__innnar {
		max-height: auto!important;
		min-height: auto!important;
	    padding: 30px 20px;

	}
	p.di_text1 {
		font-weight: 13px;
	}
	.sp_br{
		display: inline;
	}
	.pc_br{
		display: none;
	}
}
	</style>
