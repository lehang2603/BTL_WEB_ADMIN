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
                    <h4>Add category</h4>
                </div>
                <div class="card-body">
                    <form action="code.php" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-12">
                                <label for="">Name</label>
                                <input type="text" name="name" placeholder="Enter Category Name " class="form-control">
                            </div>
                          
                        
                            <!-- <div class="col-md-12">
                                <label for="">Upload Image</label>
                                <input type="file" name="image" class="form-control">
                            </div> -->
                          
                            <div class="col-md-12">
                                <label for="">Description</label>
                                <textarea rows="3" name="description" placeholder="Enter description" class="form-control"></textarea>
                            </div>
                           
                            <div class="col-md-12 mt-3 ">
                                <button type="submit" class="btn btn-primary " name="add_category_btn">Save</button>
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
