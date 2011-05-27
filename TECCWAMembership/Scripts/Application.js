function removeNestedForm(element, parentElementToDelete) {
    $(element).parents(parentElementToDelete).remove();
}

function addNestedForm(container, counter, ticks, content) {
    var nextIndex = $(counter).length;
    var pattern = new RegExp(ticks, "gi");
    content = content.replace(pattern, nextIndex);
    $(container).append(content);
} 