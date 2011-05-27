<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.Vehicle>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="vehicle">
    <%= Html.LabelFor(model => model.Model)%>
    <%= Html.TextBoxFor(model => model.Model)%>    
    <%= Html.ValidationMessageFor(model => model.Model)%>    
    <%= Html.LabelFor(model => model.Year)%>
    <%= Html.TextBoxFor(model => model.Year)%>             
    <%= Html.ValidationMessageFor(model => model.Year)%>  
    <%= Html.LabelFor(model => model.ChassisCode)%>
    <%= Html.TextBoxFor(model => model.ChassisCode)%>             
    <%= Html.ValidationMessageFor(model => model.ChassisCode)%> 
    <%= Html.LabelFor(model => model.Colour)%>
    <%= Html.TextBoxFor(model => model.Colour)%>             
    <%= Html.ValidationMessageFor(model => model.Colour)%> 
    <%= Html.LabelFor(model => model.Engine)%>
    <%= Html.TextBoxFor(model => model.Engine)%>             
    <%= Html.ValidationMessageFor(model => model.Engine)%> 
    <%= Html.LabelFor(model => model.Use)%>
    <%= Html.TextBoxFor(model => model.Use)%>             
    <%= Html.ValidationMessageFor(model => model.Use)%>  
    <%= Html.LinkToRemoveNestedForm("Remove", "div.vehicle", new {@class="remove-vehicle"})%>
    <div class="clear"></div>
</div>


