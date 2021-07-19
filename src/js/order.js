$( document ).ready(function() {
    $('button.item-order').on('click', function(){
        var id = $(this).attr('id');

        $.post('../ajax/order_post.php',{id: id}, function(response){

            alert(response);

        })

        
    });
});
