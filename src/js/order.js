$( document ).ready(function() {
    $('button.item-order').on('click', function(){
        var id = $(this).attr('id');
        var table_no = $('#table_no').find(":selected").text();
        $.post('../ajax/order_post.php',{id: id, table_no: table_no, description: 'un-confirmed'}, function(response){
            var order_box = $('#order_box').append("<b>"+id+"<b></br>");
        });
    });

    $('button.confirmbtn').on('click', function(){
        var table_no = $('#table_no').find(":selected").text();
        $.post('../ajax/order_confirmed.php', {table_no: table_no}, function(response){
        $('#order_box').html('Order Confimed</br>');
        });
    });
});
 