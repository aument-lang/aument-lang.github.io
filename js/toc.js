function $(query) {
    return document.querySelector(query);
}

function $$(query) {
    return document.querySelectorAll(query);
}

const headers = $("#content").querySelectorAll("h1,h2,h3,h4,h5,h6");
let html = "<ul>";
headers.forEach((header, id) => {
    header.id = id;
    const layer = header.tagName.substr(1);
    html += `<li class="l${layer}"><a href='#${id}'>${header.textContent}</a></li>`;
});
html += "</ul>";
$("#toc").innerHTML = html;