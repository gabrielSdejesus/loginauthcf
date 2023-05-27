$("#registerForm").validate({
    errorClass: "error-message",
    rules: {
        your_name: {
            required: true,
        },
        email_adress_register: {
            required: true,
            email: true,
        },
        password: {
            required: true,
            minlength: 8,
            maxlength: 20,
        },
        password_confirm: {
            required: true,
            equalTo: "#password_register"
        },
    }
});

$("#loginForm").validate({
    errorClass: "error-message",
    rules: {
        email_adress_login: {
            required: true,
            email: true,
        },
        password_login: {
            required: true,
            minlength: 8,
            maxlength: 20,
        }
    }
});

$(".register").on("click", function () {
    $('#loginForm').fadeOut(200);
    $(this).hide(1000);
    $('#registerForm').show(800);
    $('.singIn').show(800)
});

$(".singIn").on("click", function () {
    $('#registerForm').fadeOut(200);
    $(this).hide(1000);
    $('#loginForm').show(800);
    $('.register').show(800)
});