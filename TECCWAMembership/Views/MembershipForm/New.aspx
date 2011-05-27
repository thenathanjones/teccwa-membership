<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<TECCWAMembership.Models.MembershipForm>" %>


<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    TECCWA Membership Form
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm("Send", "MembershipForm")) {%>
        <%= Html.EditorForModel() %>

            <input type="submit" value="Send" />
    <%}%>
</asp:Content>
