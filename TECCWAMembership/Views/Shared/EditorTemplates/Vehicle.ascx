<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.Vehicle>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="vehicle">
    <div class="vehicle-year field">
        <%= Html.LabelFor(model => model.Year, new { @class="new-line" })%>
        <%= Html.TextBoxFor(model => model.Year)%> 
    </div>
    <div class="vehicle-make-model field">
        <%= Html.LabelFor(model => model.MakeModel)%>
        <%= Html.TextBoxFor(model => model.MakeModel)%>
    </div>
    <div class="vehicle-chassis-code field">
        <%= Html.LabelFor(model => model.ChassisCode)%>
        <%= Html.TextBoxFor(model => model.ChassisCode)%>
    </div>
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.Year)%>    
        <%= Html.ValidationMessageFor(model => model.MakeModel)%>
        <%= Html.ValidationMessageFor(model => model.ChassisCode)%>
    </div>
    <div class="vehicle-colour field">
        <%= Html.LabelFor(model => model.Colour)%>
        <%= Html.TextBoxFor(model => model.Colour)%>
    </div>
    <div class="vehicle-engine field">
        <%= Html.LabelFor(model => model.Engine)%>
        <%= Html.TextBoxFor(model => model.Engine)%> 
    </div>
    <div class="vehicle-use field">
        <%= Html.LabelFor(model => model.Use)%>
        <%= Html.TextBoxFor(model => model.Use)%>
    </div>
    <%= Html.LinkToRemoveNestedForm("Remove", "div.vehicle", new { @class = "remove-vehicle icon-link rounded-corners-small" })%> 
    <div class="errors">
        <%= Html.ValidationMessageFor(model => model.Colour)%>      
        <%= Html.ValidationMessageFor(model => model.Engine)%> 
        <%= Html.ValidationMessageFor(model => model.Use)%> 
    </div>
    <div class="clear"></div>
</div>


