<?php 
include ('./include/header.php');
include('../middleware/adminMiddleware.php');


?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
           <div class="col-md-12">
           
         
            <?php
            if(isset($_GET['id']))
            {
                 $id=$_GET['id'];
                $product=getByID("products", $id);

               
                
                if(mysqli_num_rows($product)>0 )
                {
                    $data= mysqli_fetch_array($product);
                    ?>
                        <div class="card">
                            <div class="card-header">
                                <h4>Edit Products
                                <a href="products.php" class="btn btn-primary float-end">Back</a>

                                </h4>

                            </div>
                            <div class="card-body">
                                <form action="code.php" method="POST" enctype="multipart/form-data">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <label class="mb-0">Select Category</label>
                                            <select name="category_id" class="form-select mb-2" >
                                                <option selected>Select Category</option>
                                                <?php
                                                    $categories= getAll("catagory");
                                                    if(mysqli_num_rows($categories)>0)
                                                    {
                                                        foreach($categories as $item)
                                                        {
                                                            ?>
                                                                <option value="<?= $item['id'];?>" <?= $data['category_id']==$item['id']?'selected':''?> ><?= $item['name'];?></option>
                                                            <?php
                                                        }
                                                    }
                                                    else{
                                                        echo "No catagory avaiable";
                                                    }
                                                
                                                ?>
                                            </select>
                                        </div>
                                        <input type="hidden" name="product_id" value="<?= $data['id'] ?>">
                                        <div class="col-md-12">
                                            <label class="mb-0">Name</label>
                                            <input type="text" require name="name" value="<?= $data['name'] ?>" placeholder="Enter Category Name " class="form-control mb-2">
                                        </div>
                            
                                        <div class="col-md-12">
                                            <label class="mb-0">Upload Image</label>
                                            <input type="hidden" name="old_image" value="<?= $data['image']; ?>">
                                            <input type="file" name="image" class="form-control  mb-2">
                                            <label class="mb-0">Current Image</label>
                                            <img src="../uploads/<?= $data['image']; ?>" alt="Products Image" height="50px" width="40px">

                                        </div>
                                       

                                        <?php if(isset($old_images) && is_array($old_images) && count($old_images) > 0): ?>
                                            <!-- Hiển thị các ảnh hiện tại của sản phẩm -->
                                            <div class="col-md-12">
                                                <label class="mb-0">Current Images</label><br>
                                                <?php foreach($old_images as $image): ?>
                                                    <img src="../uploads/<?= $image; ?>" alt="Product Image" height="50px" width="40px">
                                                <?php endforeach; ?>
                                            </div>
                                        <?php endif; ?>


                                    <!-- Các trường input cho các ảnh mới được tải lên -->
                                    <div class="col-md-12">
                                        <label class="mb-0">Upload New Images</label>
                                        <input type="file" name="images[]" class="form-control mb-2" multiple="multiple">
                                    </div>





                                        <div class="row">
                                        <div class="col-md-6">
                                            <label class="mb-0">Original Price</label>
                                            <input type="number"require name="original_price" value="<?= $data['original_price'] ?>" placeholder="Enter Original Price " class="form-control  mb-2">
                                        </div>
                                        <div class="col-md-6">
                                            <label class="mb-0">Selling Price</label>
                                            <input type="number"require name="selling_price" value="<?= $data['selling_price'] ?>" placeholder="Enter Selling Price " class="form-control  mb-2">
                                        </div>
                                        </div>
                                        <div class="col-md-12">
                                            <label class="mb-0">Quantity</label>
                                            <input type="number"require name="quantity" value="<?= $data['quantity'] ?>" placeholder="Enter Quantity " class="form-control  mb-2">
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <label class="mb-0">Description</label>
                                            <textarea rows="3" require name="description" id="description"  placeholder="Enter description" class="form-control mb-2 ckeditor"><?= $data['description'] ?></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            <label class="mb-0">Introduce</label>
                                            <textarea rows="3" require name="introduce"   placeholder="Enter introduce" class="form-control  mb-2 ckeditor" id="editor"><?= $data['introduce'] ?></textarea>
                                        </div>
                                        
                                        
                                        <div class="col-md-12">
                                            <label class="mb-0">Tips</label>
                                            <textarea rows="3" require name="tips"  id="tips"   placeholder="Enter Tips" class="form-control  mb-2 ckeditor"><?= $data['tips'] ?></textarea>
                                        </div>
                                        <div class="col-md-12">
                                                <label class="mb-0">Show home</label>
                                                <input type="checkbox" name="showhome" <?= $data['showhome'] ? 'checked' : '' ?>>
                                        </div>
                                        
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-primary" name="update_product_btn">Update</button>
                                        </div>
                                    </div>
                                </form>
                                
                            </div>
                        </div>
                    <?php
                    }
                        else
                            {
                                echo "Product Not Found for given id";
                            }
                    
                }
                    else
                        {
                            echo "Id missing from url";
                        }
            ?>
           </div>
        </div>
    </div>             
</div>
<?php include ('./include/footer.php')?>
