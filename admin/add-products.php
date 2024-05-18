<?php
include ('./include/header.php');
include('../middleware/adminMiddleware.php');

?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
           <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Add Products</h4>
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
                                                    <option value="<?= $item['id'];?>"><?= $item['name'];?></option>
                                                <?php
                                            }
                                        }
                                        else{
                                            echo "No catagory avaiable";
                                        }
                                       
                                    ?>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <label class="mb-0">Name</label>
                                <input type="text" require name="name" placeholder="Enter Category Name " class="form-control mb-2">
                            </div>
                
                            <div class="col-md-12">
                                <label class="mb-0">Upload Image</label>
                                <input type="file"require name="image" class="form-control  mb-2">
                            </div> <div class="col-md-12">
                                <label class="mb-0">Ảnh mô tả</label>
                                <input type="file"require name="images[]" class="form-control  mb-2 " multiple="multiple">
                               
                            </div>
                            <div class="row">
                            <div class="col-md-6">
                                <label class="mb-0">Original Price</label>
                                <input type="number"require name="original_price" placeholder="Enter Original Price " class="form-control  mb-2">
                            </div>
                            <div class="col-md-6">
                                <label class="mb-0">Selling Price</label>
                                <input type="number"require name="selling_price" placeholder="Enter Selling Price " class="form-control  mb-2">
                            </div>
                            </div>
                            <div class="col-md-12">
                                <label class="mb-0">Quantity</label>
                                <input type="number"require name="quantity" placeholder="Enter Quantity " class="form-control  mb-2">
                            </div>
                            
                            <div class="col-md-12">
                                <label class="mb-0">Description</label>
                                <textarea rows="3"require name="description" id="description" placeholder="Enter description" class="form-control  mb-2 ckeditor"></textarea>
                            </div>
                            <div class="col-md-12">
                                <label class="mb-0">Introduce</label>
                                <textarea rows="10" require name="introduce" id="editor"   placeholder="Enter introduce" class="form-control  mb-2 ckeditor "></textarea>  
                               
                            </div>
                            <div class="col-md-12">
                                <label class="mb-0">Tips</label>
                                <textarea rows="3" require name="tips " id="tips"  placeholder="Enter Tips" class="form-control  mb-2 ckeditor"></textarea>
                            </div>
                           <div class="col-md-12">
                                <label class="mb-0">Show home</label>
                                <input type="checkbox" name="showhome">
                           </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="add_product_btn">Save</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
           </div>
        </div>
    </div>             
</div>


<?php include ('./include/footer.php')?>
