<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.Vehicle>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="vehicle">
    <%= Html.ValidationMessageFor(model => model.Year)%>    
    <%= Html.ValidationMessageFor(model => model.MakeModel)%>            
    <%= Html.ValidationMessageFor(model => model.ChassisCode)%>          
    <%= Html.ValidationMessageFor(model => model.Colour)%>  
    <%= Html.ValidationMessageFor(model => model.Engine)%>     
    <%= Html.ValidationMessageFor(model => model.Use)%>  
    <%= Html.LabelFor(model => model.Year, new { @class="new-line" })%>
    <%= Html.TextBoxFor(model => model.Year, new { @class = "VehicleYear" })%>             
    <%= Html.LabelFor(model => model.MakeModel)%>
    <%= Html.TextBoxFor(model => model.MakeModel, new { @class = "VehicleModel" })%>  
    <%= Html.LabelFor(model => model.ChassisCode)%>
    <%= Html.TextBoxFor(model => model.ChassisCode, new { @class = "VehicleChassisCode" })%>    
    <%= Html.LinkToRemoveNestedForm("Remove", "div.vehicle", new { @class = "remove-vehicle icon-link rounded-corners-small" })%> 
    <%= Html.LabelFor(model => model.Colour, new { @class = "new-line" })%>
    <%= Html.TextBoxFor(model => model.Colour, new { @class = "VehicleColour" })%>    
    <%= Html.LabelFor(model => model.Engine)%>
    <%= Html.TextBoxFor(model => model.Engine, new { @class = "VehicleEngine" })%>            
    <%= Html.LabelFor(model => model.Use)%>
    <%= Html.TextBoxFor(model => model.Use, new { @class = "VehicleUse" })%>          
    <div class="clear"></div>
</div>


