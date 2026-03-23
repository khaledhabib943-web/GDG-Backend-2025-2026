<?php
$title = "Elzero Courses";
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php echo $title; ?>">
    <title>Welcome To <?php echo $title; ?></title>
  </head>
  <body>
    <h1><?php echo $title; ?></h1>
    <p>Here In <?php echo $title; ?> We Provide Front-End And Back-End Courses</p>
    <hr>
    <div><?php echo $title; ?> Is The What You Need.</div>
    <footer>All Right Reserved To <?php echo $title; ?></footer>
  </body>
</html>
//----------------------------------------------------
<?php
$name = "elzero";
$$name = "Web";

echo $elzero;
echo "<br>";

echo ${$name};
echo "<br>";

echo $$name;
echo "<br>";

echo $GLOBALS['elzero'];
echo "<br>";

echo "{$elzero}";

//------------------------------------------------------
$a = 200;
$b = &$a;
$a = 100;

echo $b; 

//--------------------------------------------------------
echo $_SERVER['DOCUMENT_ROOT'];
echo "<br>";

echo $_SERVER['SERVER_NAME'];
echo "<br>";

echo getenv('SystemRoot');
echo "<br>";

echo $_SERVER['OPENSSL_CONF'];
//--------------------------------------------------
/*
  if
  else
  while
  for
  function
  class
  echo
  return
  switch
  break
*/
//------------------------------------------------
echo __LINE__;
echo "<br>";

echo __FILE__;
echo "<br>";

echo __DIR__;
?>