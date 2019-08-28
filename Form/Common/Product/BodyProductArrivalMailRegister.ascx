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

		<div rowspan="4" class="th_1">メールアドレス<!-- <span class="necessary">*</span> --></div>


		<div class="divProductArrivalMail__innnar__section1">
			<div visible="<%# (this.IsLoggedIn && this.HasPcAddr) %>" runat="server" >
				<div class="pop_mail1"><asp:CheckBox id="cbUserPcAddr" runat="server" Checked="<%# (this.IsPcAddrRegistered || this.HasPcAddr) %>" />
					<label> <%: ReplaceTag("@@User.mail_addr.name@@") %>
					(<%#: this.PcAddr %>)</label>
				</div>
			</div>
		</div>
		<div class="divProductArrivalMail__innnar__section2">
			<div visible="<%# (Constants.MOBILEOPTION_ENABLED && this.IsLoggedIn && this.HasMbAddr) %>" runat="server">
				<div class="pop_mail2"><asp:CheckBox id="cbUserMobileAddr" runat="server" Checked="<%# (Constants.MOBILEOPTION_ENABLED && (this.IsMbAddrRegistered || (this.HasPcAddr == false))) %>" /><%: ReplaceTag("@@User.mail_addr2.name@@") %>
					(<%#: this.MbAddr %>)</div>
			</div>
		</div>
		<div class="divProductArrivalMail__innnar__section3">
			<asp:CheckBox id="cbMailAddr" runat="server" Checked="<%# (this.IsLoggedIn == false) %>" Text="その他" />
			<asp:TextBox ID="tbMailAddr" runat="server" CssClass="mailAddr" MaxLength="256" Width="200" />
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
			<% if(this.HasPcMailKbnResult) {%>[PC]<%} %>
			<% if(this.HasMbMailKbnResult) {%>[モバイル]<%} %>
			<% if(this.HasOtherMailKbnResult) {%>[その他]<%} %>
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
    margin: 15px 0 0 0!important;
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
	    padding: 60px 20px 60px;

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
<script>
	$(function(){
		$("input#ctl00_ContentPlaceHolder1_ucBpamrArrival_tbMailAddr").attr("placeholder","jamaisvu@xxx.co.jp")
	})

</script>
