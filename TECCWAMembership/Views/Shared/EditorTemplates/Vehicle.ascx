<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.Vehicle>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="vehicle">
    <div class="form-fields">
        <%= Html.LabelFor(model => model.Model)%>
        <%= Html.TextBoxFor(model => model.Model)%>          
    </div>
    <div class="form-fields-errors">
        <%= Html.ValidationMessageFor(model => model.Model)%>  
    </div>   
    <%= Html.LinkToRemoveNestedForm("Remove", "div.vehicle", new {@class="remove-vehicle"})%>
    <div class="clear"></div>
</div>


