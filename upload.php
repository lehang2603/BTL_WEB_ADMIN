<?php
include('helper.php');
if ($_FILES['upload']) {
    $file = $_FILES['upload'];
    $path ="uploads/";

    $filename = basename($file['name']);

    if(file_exists("uploads/".$filename))
    {
        $image_ext = pathinfo($file['name'], PATHINFO_EXTENSION);
        $image_name = pathinfo($file['name'], PATHINFO_FILENAME);
        $image_name = Helper::createSlug($image_name);
        $filename = $image_name.'-'.time().'.'.$image_ext;
    }

    $target_file = $path . $filename;

    if (move_uploaded_file($file['tmp_name'], $target_file)) {
        $url = '/btl_web_admin/uploads/' . $filename;
        echo json_encode([
            'uploaded' => true,
            'url' => $url
        ]);
        exit;
    } else {
        echo json_encode([
            'uploaded' => false,
            'error' => [
                'message' => 'Upload failed'
            ]
        ]);
        exit;
    }
}
?>