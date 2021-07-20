$(document).ready(function () {
  $("#review").submit(function (e) {
    e.preventDefault();

    var email = $("input#email").val();
    var message = $("textarea#message").val();

    if (isEmail(email) === true) {
      $.post(
        "../ajax/post_message.php",
        { email: email, message: message },
        function (response) {
          window.location.href = "./order.html";
        }
      );
    }
  });
});

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
