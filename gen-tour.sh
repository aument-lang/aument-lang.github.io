tour_cont=`python -m markdown -x fenced_code ../aument/docs/tour.md`
tour_cont=$(echo "$tour_cont" | sed "s/<code>/<code class='language-'>/g")

src="<!doctype html>
<html lang='en'>
  <head>
    <meta charset='utf-8'>
    <title>Tour of the Aument language</title>
    
    <link href='../css/bootstrap.min.css' rel='stylesheet'>
    <link href='../css/prism.css' rel='stylesheet'>
    <link href='../css/style.css' rel='stylesheet'>
    <link href='../css/content.css' rel='stylesheet'>
  </head>
  <body>


<div class='container container-sm' style='margin: 20px auto; padding:0;'>
    <nav class='navbar'>
      <div class='container-fluid'>
        <a class='navbar-brand' href='/'><b>aument</b></a>
        <ul>
            <li class='nav-item'>
                <a class='nav-link active' aria-current='page' href='/'>Home</a>
            </li>
            <li class='nav-item'><a class='nav-link' href='/updates'>Updates</a></li>
            <li class='nav-item'><a class='nav-link' href='/about'>About</a></li>
        </ul>
      </div>
    </nav>
</div>

<main class='container'>
  <div class='row'>
  <div class='col-4'>
  <div id='toc-col'>
  <h1 style='text-align:center;'>Table of contents</h1>
  <div id='toc'>
  <p>(Table of contents go here.)</p>
  </div>
  <noscript>
  <p>Enable JavaScript.</p>
  </noscript>
  </div>
  </div>
  <div class='col-8' id='content'>
$tour_cont
  </div>
  </div>
  <footer class='bd-footer p-3 p-md-5 text-center'>
  <div class='container'>
    <ul class='bd-footer-links ps-0 mb-3'>
      <li class='d-inline-block'><a href='https://github.com/aument-lang/aument'>GitHub</a></li>
      <li class='d-inline-block ms-3'><a href='https://gitlab.com/aument-lang/aument'>GitLab (mirror)</a></li>
    </ul>
    <p class='mb-0'>Language is licensed under Apache 2.0, website licensed GPL-v3.</p>
    <p class='mb-0'><small><em>&ndash; thank you to the Aument contributors &ndash;</em></small></p>
  </div>
</footer>
</main>

<script src='https://prismjs.com/prism.js'></script>
<script src='../js/toc.js'></script>

</body>
</html>
"
echo "$src" > tour/index.html