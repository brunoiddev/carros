<?php
require_once('model/db.php');
require_once('model/carro.php');
echo "Hello carros<br><br>";

$db = new Db();
$carro = new Carro();

$stmt = $db->query('SELECT acesso FROM acesso');
while ($row = $stmt->fetch())
{
    echo $row['acesso'] . "<br>";
}

?>
