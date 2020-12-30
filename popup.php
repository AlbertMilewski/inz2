$db= mysql_connect("localhost","root","root");
 if(!$db)
{
    echo "CAN'T CONNECT DATABASE";
    exit;
}
$db_selected = mysql_select_db("sctv_data2",$db);
if(!$db_selected)
{
    die("CAN'T USE THIS DATABASE: ".mysql_error());
}
if($_POST["mail"] !="" && $_POST["username"] != "" && $_POST["password"] !="" )
{
    $mail = $_POST["mail"];
    $username = $_POST["username"];
    $password = $_POST["password"];
    $sql = "INSERT INTO 'login' (email, username, password) VALUES ( '$mail','$username','$password')";   // Use you own column name from login table
    $result = mysql_query($sql,$db);
}