$(document).ready(function(){
    $('.delete_product_btn').click(function (e) { 
        e.preventDefault();
        var id=$(this).val();
       // alert(id);

        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover ",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                    $.ajax({
                        method: "POST",
                        url: "code.php",
                        data:{
                            'product_id':id,
                            'delete_product_btn':true
                        },
                       
                        success: function (response) {
                          
                            if(response == 200)
                            {

                                swal("Success", "Product deleted Successfully", "success");
                                $("#products_table").load(location.href + "#products_table")
                            }
                            else if(response==500)
                            {
                                swal("Error!", "Somethinf went wrong", "error");
                                
                            }
                        }
                    });
            } 
          });
          
    });

    $(document).on("click",'.delete_category_btn', function (e) {

        e.preventDefault();
        var id=$(this).val();
       // alert(id);

        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover ",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                    $.ajax({
                        method: "POST",
                        url: "code.php",
                        data:{
                            'category_id':id,
                            'delete_category_btn':true
                        },
                       
                        success: function (response) {
                          
                            if(response == 200)
                            {

                                swal("Success", "Category deleted Successfully", "success");
                                window.location.reload();
                                $("#category_table").load(location.href + "#category_table")
                            }
                            else if(response==500)
                            {
                                swal("Error!", "Somethinf went wrong", "error");
                                
                            }
                        }
                    });
            } 
          });
          
    });

    ClassicEditor
        .create(document.querySelector('#editor'), {
            ckfinder: {
                uploadUrl: '/btl_web_admin/upload.php',
            }
        })
        .then( editor => {
                console.log( editor );
        } )
        .catch( error => {
                console.error( error );
        } );
  
    ClassicEditor
      .create(document.querySelector('#tips'), {
        ckfinder: {
            uploadUrl: '/btl_web_admin/upload.php',
        }
    })
      .then( editor => {
              console.log( editor );
      } )
      .catch( error => {
              console.error( error );
      } );
      ClassicEditor
      .create(document.querySelector('#description'), {
            ckfinder: {
                uploadUrl: '/btl_web_admin/upload.php',
            }
        })
      .then( editor => {
              console.log( editor );
      } )
      .catch( error => {
              console.error( error );
      } );

});