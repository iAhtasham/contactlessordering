$(document).ready(function () {
  for (var i = 1; i < 4; i++) {
    setTable(i);
  }

  var reviews = $("#review_box");

  $.get("../ajax/reviews.php", function (response) {
    const reviews_array = JSON.parse(response);

    reviews_array.forEach((obj) => {
      var email = "("+obj.email+") ";
      var message = obj.review;
      reviews.append("<div style='align-items:right'>"+email+message+"</div>")
    });
  });
});

function setTable(i) {
  var orders_field = $(".float-orders");
  $.get("../ajax/orders.php", { table_no: i }, function (response) {
    const orders_list = JSON.parse(response);
    const table_no =
      "<p style='color: black; font-size: 20px;'> Table no: " + i + "</p>";
    var time;
    var orders = "<ul style='margin-left:20px; list-style: square;'>";
    orders_list.forEach((obj) => {
      time = obj.time;
      orders += "<li>" + obj.id + "</li>";
    });
    // checking if order is empty
    if (!time) return;
    time =
      "<p style='text-align:right; font-weight:bold'>ORDER TIME: " +
      time +
      "</p>";
    orders += "</ul>";

    var button =
      "<button style='margin:10px;' onClick='confirm(" +
      i +
      ")'>Confirm delivered</button>";

    var details =
      "<div id=table_" +
      $.trim(i) +
      ">" +
      table_no +
      time +
      orders +
      button +
      "</div>";

    orders_field.append(details);
  });
}

function confirm(table_no) {
  $.post(
    "../ajax/mark_order_done.php",
    { table_no: table_no },
    function (response) {
      alert(response);
      $("#table_" + table_no).hide();
    }
  );
}
