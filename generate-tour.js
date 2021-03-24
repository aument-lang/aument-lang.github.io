const fs = require("fs");
const md = require('markdown-it')();
const MarkdownItTocDesc = require('markdown-it-toc-desc').default;

let headings;
const options = {
    includeLevel: [1, 2, 3, 4, 5, 6],
    slugify: (s) => s,
    getTocTree: (tree) => { headings = tree },
};
md.use(MarkdownItTocDesc, options);

const template = fs.readFileSync("templates/tour.html").toString();
const content = fs.readFileSync("../aument/docs/tour.md").toString();
let text = template.replace("##content##", md.render(content));
text = text.replace(/<code>/g, "<code class='language-au'>");

function toUrlId(str) {
    return str.replace(/ /g, "_");
}

let toc = "";
function walkHeading(headings) {
    toc += "<ul>";
    for(let heading of headings) {
        toc += `<li><a href="#${toUrlId(heading.content)}">${heading.content}</a>`;
        if(heading.children.length > 0)
            walkHeading(heading.children);
        toc += "</li>";
    }
    toc += "</ul>";
}
walkHeading(headings[0].children);
text = text.replace("##toc##", toc);

for(let i = 0; i < 6; i++) {
    text = text.replace(new RegExp(`<h${i}>([^<]+)<\/h${i}>`, "g"), (_, content) => {
        return `<h${i} id="${toUrlId(content)}">${content}</h${i}>`;
    });
}

fs.writeFileSync("tour/index.html", text);