<?php 
include ('./include/header.php');
include('../middleware/adminMiddleware.php');
?>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card-header">
                <h4>Categories</h4>
                <a href="add-category.php" class="btn btn-primary float-end">Add</a>
            </div>
            <div class="card-body " id=" category_table">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <!-- <th>Image</th> -->
                            <th>Description</th>
                            <th>Edit</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $category = getAll("catagory");
                            if(mysqli_num_rows($category) > 0)
                            {
                                foreach($category as $item)
                                {
                                    ?>
                                    <tr>
                                       <td><?= $item['id'] ;?></td>
                                       <td><?= $item['name'] ;?></td>
                                       <!-- <td>
                                            <img src="../uploads/<?= $item['image'] ;?>" alt="<?= $item['image'] ;?>">
                                        </td> -->
                                       <td>
                                            <?= $item['description']; ?>
                                        </td>
                                        <td>
                                            <a href="edit-category.php?id=<?= $item['id'] ;?>" class="btn btn-primary">Edit</a>
                                            <!-- <form action="code.php" method="POST">
                                                <input type="hidden" name="category_id" value="<?= $item['id'] ;?>"> 
                                                <button type="submit" class="btn btn-danger" name="delete_category_btn">Delete</button>
                                            </form> -->
                                            
                                        </td>
                                        <td>
                                        <button type="button" class="btn btn-sm btn-danger delete_category_btn" value="<?= $item['id'] ;?>">Delete</button>
                                        </td>
                                    </tr>
                                   
                                    <?php
                                }
                            }
                        ?>
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>             
</div>
<?php include ('./include/footer.php')?>
