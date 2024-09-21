<?php
require_once "../connect.php";


if (isset($_POST['id'])) {
    $id = $_POST['id'];
    
    // Выполняем запрос на удаление
    $result = mysqli_query($con, "DELETE FROM tasks WHERE id = $id");

    if ($result) {
        echo 'success'; // Возвращаем текстовый ответ
    } else {
        echo 'error'; // Возвращаем текст ошибки
    }
}
// session_start();
// $id_task = $_GET["id"];

// $sql = mysqli_query($con, "DELETE FROM `tasks` WHERE id = $id_task");
// $_SESSION["message"] = "Заметка удалена";
// header("Location: /user.php");