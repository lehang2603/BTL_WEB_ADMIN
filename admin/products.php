<?php


include ('./include/header.php');
include('../middleware/adminMiddleware.php');
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card-header">
                <h4>Products</h4>
                <a href="add-products.php" class="btn btn-primary float-end">Add</a>
                
            </div>
            <div class="card-body " id="products_table">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Category</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $products = getAll("products");
                            if(mysqli_num_rows($products) > 0)
                            {
                                foreach($products as $item)
                                {
                                    ?>
                                    <tr>
                                       <td><?= $item['id'] ;?></td>
                                       <td><?= $item['category_id'] ;?></td>
                                       <td><?= $item['name'] ;?></td>
                                      
                                       <td>
                                            <img src="../uploads/<?= $item['image'] ;?>" alt="<?= $item['image'] ;?>" width="100x`">
                                        </td>
                                      
                                        <td>
                                            <a href="edit-product.php?id=<?= $item['id'] ;?>" class="btn btn-sm btn-primary">Edit</a>
                                           
                                            
                                        </td>
                                        <td>
                                       
                                                <button type="button" class="btn btn-sm btn-danger delete_product_btn" value="<?= $item['id'] ;?>">Delete</button>
                                          
                                        </td>
                                    </tr>
                                   
                                    <?php
                                }
                            }
                            else
                            {
                                echo " No records found";
                            }
                        ?>
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>             
</div>
<?php include ('./include/footer.php')?>
