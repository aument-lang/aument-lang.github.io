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
$tour_cont
</main>

<script src='https://prismjs.com/prism.js'></script>

</body>
</html>
"
echo "$src" > tour/index.html