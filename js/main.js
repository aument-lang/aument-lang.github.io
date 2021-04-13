function $(query) {
    return document.querySelector(query);
}

function $$(query) {
    return document.querySelectorAll(query);
}

const codeSelector = $("#code-selector");
codeSelector.onchange = _ => {
    if(codeSelector.selectedIndex === -1)
        return;
    $("#code-viewer").textContent = codes[codeSelector.options[codeSelector.selectedIndex].value];
    Prism.highlightElement($("#code-viewer"));
};
$("#code-viewer").textContent = codes["class.au"];