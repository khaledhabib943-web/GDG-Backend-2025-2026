<?php
echo (int) (15.2 + 14.7 + (10.5 + 10.5));
echo '<br>';
echo gettype((int) (15.2 + 14.7 + (10.5 + 10.5)));

//---------------------------------------------------------
$number = 100;

echo gettype($number);

echo '<br>';

var_dump($number);

echo '<br>';
echo is_int($number) ? "Integer" : "Not Integer";


//---------------------------------------------------------
echo 'Hello "Elzero" \\ """ We Love "$$PHP"';

//---------------------------------------------------------
echo "<pre>We" . PHP_EOL . "Love" . PHP_EOL . "Elzero" . PHP_EOL . "Web" . PHP_EOL . "School</pre>";
//---------------------------------------------------------

echo '"Hello ' . "'Elzero'" . '"' . PHP_EOL;
echo 'We Love $Programming$' . PHP_EOL;
echo 'Languages Specially "PHP"';

//---------------------------------------------------------
$something = "Programming";

echo <<<code
Hello \PHP\ We Love $something
code;

//---------------------------------------------------------
echo (int) ("Hello PHP" == "Hello PHP");
echo '<br>';
echo gettype((int) ("Hello PHP" == "Hello PHP"));

//---------------------------------------------------------
$array = [
  "FrontEnd" => [
    "HTML",
    "CSS",
    "JS" => [
      "Vuejs" => [
        2 => "v2",
        3 => "v3"
      ],
      "Reactjs",
      "Svelte"
    ]
  ],
  "BackEnd" => [
    "PHP",
    "MySQL",
    "Security"
  ],
  "Git",
  "Github",
  "Testing" => [
    "Unit Testing",
    "End To End",
    "Integration"
  ]
];

print_r($array);
?>