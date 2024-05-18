<?php
session_start();
include('../config/dbcon.php');
include('../functions/myfunctions.php');

if(isset($_POST['add_category_btn'])){
    $name = $_POST['name'];
   
    $description = $_POST['description'];
   

     $image = $_FILES['image']['name'];

     $path ="../uploads";

     $image_ext=pathinfo($image, PATHINFO_EXTENSION);
     $filename= time().'.'.$image_ext;
     
     $cate_query= "INSERT INTO catagory (name,image,description) 
     VALUES('$name','$image','$description')";

    $cate_query_run= mysqli_query($con, $cate_query);
    if($cate_query_run)
    {
        move_uploaded_file($_FILES['image']['tmp_name'], $path.'/'.$filename);
        redirect("add-category.php","Category Add Successfully");

    }
    else{
        redirect("add-category.php","Something Went Wrong");
    }
}
else if(isset($_POST['update_category_btn']))
{
    $category_id= $_POST['category_id'];
    $name = $_POST['name'];
   
    $description = $_POST['description'];


     $new_image = $_FILES['image']['name'];
     $old_image= $_POST['old_image'];
     if($new_image != "")
     {
        //$update_filename= $new_image;
        $image_ext=pathinfo($new_image, PATHINFO_EXTENSION);
        $update_filename= time().'.'.$image_ext;
     }
     else{
        $update_filename= $old_image;
     }
     $path ="../uploads";
    
     $update_query= "UPDATE catagory SET name='$name', description='$description',image='$update_filename' WHERE id='$category_id' ";
     $update_query_run=mysqli_query($con,$update_query);
     if( $update_query_run)
     { 
        if($_FILES['image']['name'] != "")
        {
            move_uploaded_file($_FILES['image']['tmp_name'], $path.'/'.$update_filename );
            if(file_exists("../uploads/".$old_image))
            {
                unlink("../uploads/".$old_image);
            }
        }
        redirect("edit-category.php?id=$category_id","Category Updateed Successfully.");
     }
     else
     {
        redirect("edit-category.php?id=$category_id","Some thing went wrong.");

     }
}
else if(isset($_POST['delete_category_btn']))
{
    $category_id = mysqli_real_escape_string($con, $_POST['category_id']);

    $category_query="SELECT * FROM catagory WHERE id='$category_id'";
    $category_query_run= mysqli_query($con,$category_query);
    $category_data=mysqli_fetch_array($category_query_run);
    $image=$category_data['image'];

    $delete_query="DELETE FROM catagory WHERE id='$category_id'";
    $delete_query_run= mysqli_query($con, $delete_query);

    if( $delete_query_run)
    {
        
        if($image && file_exists("../uploads/".$image))
        {
            unlink("../uploads/".$image);
        }
        //redirect("category.php","Category deleted Successfully");
        echo 200;
    }
    else{
        //redirect("category.php","Somethinf went wrong");
        echo 500;
    }
}
else if(isset($_POST['add_product_btn']))
{
    $category_id = $_POST['category_id'];
    $name= $_POST['name'];
    $original_price= $_POST['original_price'];
    $quantity=$_POST['quantity'];
    $selling_price= $_POST['selling_price'];
    $description = $_POST['description'];
    $introduce= $_POST['introduce'];
    $showhome = isset($_POST['showhome']) ? 1 : 0;
   

    $tips= $_POST['tips'];
    // echo '<pre>';
    // var_dump($_FILES);die();

    $image = $_FILES['image']['name'];
     $path ="../uploads";

     $image_ext=pathinfo($image, PATHINFO_EXTENSION);
     $filename= time().'.'.$image_ext;
     if(isset($_FILES['images']))
     {
        $img=$_FILES['images'];
       
        $img_name=$img['name'];
       //var_dump($img['tmp_name']);die();
       foreach( $img_name as $key => $value){
        move_uploaded_file($img['tmp_name'][$key], $path.'/'.$value);
       }
     }
     //die();

    
    if($name !="" && $description != "")
    {
        $product_query ="INSERT INTO products (category_id,name,quantity,original_price,selling_price,description,introduce,tips,showhome,image)
        VALUES('$category_id','$name','$quantity','$original_price','$selling_price','$description','$introduce','$tips','$showhome','$filename')" ;
        
        $product_query_run = mysqli_query($con, $product_query);
        $id_pro=mysqli_insert_id($con);
        //var_dump($id_pro);die();
        foreach($img_name as $key => $value){
            mysqli_query($con,"INSERT INTO img_products(id_products,image)VALUES('$id_pro','$value')");
        }
        if( $product_query_run)
        {
            
            move_uploaded_file($_FILES['image']['tmp_name'], $path.'/'.$filename);
           
            redirect("add-products.php","Product Add Successfully");
        }
        else
        {
            redirect("add-products.php","Something went wrong");
        }
    }
    else
    {
        redirect("add-products.php","All fields are mandatory.");
    }

   
}
    
else if(isset($_POST['update_product_btn']))
{
    $product_id = $_POST['product_id'];
    $category_id = $_POST['category_id'];
    $name= $_POST['name'];
    $original_price= $_POST['original_price'];
    $quantity=$_POST['quantity'];
    $selling_price= $_POST['selling_price'];
    $description = $_POST['description'];
    $introduce= $_POST['introduce'];
    $showhome = isset($_POST['showhome']) ? 1 : 0;
    //$characters= $_POST['character']; 

    $tips= $_POST['tips'];
   

     $path ="../uploads";

     $new_image = $_FILES['image']['name'];
     $old_image= $_POST['old_image'];
     if($new_image != "")
     {
        //$update_filename= $new_image;
        $image_ext=pathinfo($new_image, PATHINFO_EXTENSION);
        $update_filename= time().'.'.$image_ext;
     }
     else{
        $update_filename= $old_image;
     }
     $update_product_query="UPDATE products SET name='$name',original_price='$original_price',selling_price='$selling_price',quantity='$quantity',description='$description',introduce='$introduce',tips='$tips',showhome='$showhome',image='$update_filename',category_id='$category_id' WHERE id='$product_id' ";
     $path ="../uploads";
     $update_product_query_run= mysqli_query($con, $update_product_query);

     if( $update_product_query_run)
     { 
        if($_FILES['image']['name'] != "")
        {
            move_uploaded_file($_FILES['image']['tmp_name'], $path.'/'.$update_filename );
            if(file_exists("../uploads/".$old_image))
            {
                unlink("../uploads/".$old_image);
            }
        }
        redirect("edit-product.php?id=$product_id","Product Updateed Successfully.");
     }
     else
     {
        redirect("edit-product.php?id=$product_id","Some thing went wrong.");

     }
}



else if(isset($_POST['delete_product_btn']))
{
    $product_id = mysqli_real_escape_string($con, $_POST['product_id']);

    $product_query="SELECT * FROM products WHERE id='$product_id'";
    $product_query_run= mysqli_query($con,$product_query);
    $product_data=mysqli_fetch_array($product_query_run);
    $image=$product_data['image'];

    $delete_query="DELETE FROM products WHERE id='$product_id'";
    $delete_query_run= mysqli_query($con, $delete_query);

    if( $delete_query_run)
    {
        
        if(file_exists("../uploads/".$image))
        {
            unlink("../uploads/".$image);
        }
       // redirect("products.php","Product deleted Successfully");
        echo 200;
    }
    else{
       // redirect("products.php","");
        echo 500;
    }
}
else{
    header('Location: ../index.php');
}
?>