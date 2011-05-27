<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<TECCWAMembership.Models.EmergencyContact>" %>
<%@ Import Namespace="TECCWAMembership.Helpers" %>

<div class="emergency-contact">
    <div class="form-fields">
        <%= Html.LabelFor(model => model.Name)%>
        <%= Html.TextBoxFor(model => model.Name)%>
        <%= Html.LabelFor(model => model.ContactNumber)%>
        <%= Html.TextBoxFor(model => model.ContactNumber)%>                               
        <%= Html.LabelFor(model => model.Relationship)%>
        <%= Html.TextBoxFor(model => model.Relationship)%>                    
    </div>
    <div class="form-fields-errors">
        <%= Html.ValidationMessageFor(model => model.Name)%>  
        <%= Html.ValidationMessageFor(model => model.ContactNumber)%>  
        <%= Html.ValidationMessageFor(model => model.Relationship)%>  
    </div>   
    <%= Html.LinkToRemoveNestedForm("Remove", "div.emergency-contact", new {@class="remove-emergency-contact"})%>
    <div class="clear"></div>
</div>