$(document).ready(function () {
    $('.esewa_btn').click(function (e) {
        e.preventDefault();

        var firstname = $('.firstname').val();
        var lastname = $('.lastname').val();
        var email = $('.email').val();
        var phone = $('.phone').val();
        var address1 = $('.address1').val();
        var address2 = $('.address2').val();
        var city = $('.city').val();
        var state = $('.state').val();
        var country = $('.country').val();
        var postalcode = $('.postalcode').val();

        if(!firstname)
        {
            fname_error = "First Name is required";
            $('#fname_error').html('');
            $('#fname_error').html(fname_error);

        }
        else{
            fname_error = "";
            $('#fname_error').html('');
        }

        if(!lastname)
        {
            lname_error = "Last Name is required";
            $('#lname_error').html('');
            $('#lname_error').html(lname_error);

        }
        else{
            lname_error = "";
            $('#lname_error').html('');
        }

        if(!email)
        {
            email_error = "Email is required";
            $('#email_error').html('');
            $('#email_error').html(email_error);

        }
        else{
            email_error = "";
            $('#email_error').html('');
        }

        if(!phone)
        {
            phone_error = "Phone number is required";
            $('#phone_error').html('');
            $('#phone_error').html(phone_error);

        }
        else{
            phone_error = "";
            $('#phone_error').html('');
        }

        if(!address1)
        {
            address1_error = "Address 1 is required";
            $('#address1_error').html('');
            $('#address1_error').html(address1_error);

        }
        else{
            address1_error = "";
            $('#address1_error').html('');
        }

        if(!address2)
        {
            address2_error = "Address 2 is required";
            $('#address2_error').html('');
            $('#address2_error').html(address2_error);

        }
        else{
            address2_error = "";
            $('#address2_error').html('');
        }

        if(!city)
        {
            city_error = "City is required";
            $('#city_error').html('');
            $('#city_error').html(city_error);

        }
        else{
            city_error = "";
            $('#city_error').html('');
        }

        if(!state)
        {
            state_error = "State is required";
            $('#state_error').html('');
            $('#state_error').html(state_error);

        }
        else{
            state_error = "";
            $('#state_error').html('');
        }

        if(!country)
        {
            country_error = "Country is required";
            $('#country_error').html('');
            $('#country_error').html(country_error);

        }
        else{
            country_error = "";
            $('#country_error').html('');
        }

        if(!postalcode)
        {
            postalcode_error = "Postal code is required";
            $('#postalcode_error').html('');
            $('#postalcode_error').html(postalcode_error);

        }
        else{
            postalcode_error = "";
            $('#postalcode_error').html('');
        }

        if(fname_error != '' || lname_error != '' || email_error != '' || phone_error != '' || address1_error != '' || address2_error != '' || city_error != '' || state_error != '' || country_error != '' || postalcode_error != '')
        {
            return false;
        }
        else
        {
            var data = {
                'firstname':firstname,
                'lastname':lastname,
                'email':email,
                'phone':phone,
                'address1':address1,
                'address2':address2,
                'city':city,
                'state':state,
                'country':country,
                'postalcode':postalcode
            }

            $.ajax({
                method: "POST",
                url: "/proceed-to-pay",
                data: data,
                success: function (response)
                {
                    //alert(response.total_price);
                    var path = "https://uat.esewa.com.np/epay/main";
                                var params = {
                                    amt: response.total_price,
                                    psc: 0,
                                    pdc: 0,
                                    txAmt: 0,
                                    tAmt: response.total_price,
                                    pid: "ee2c3ca1-696b-4cc5-a6be-2c40d929d453",
                                    scd: "EPAYTEST", // please use your merchant id here...
                                    su: "http://esewa-payment-integration.test/success",
                                    fu: "http://esewa-payment-integration.test/checkout/failure"
                                }
                                var form = document.createElement("form");
                                form.setAttribute("method", "POST");
                                form.setAttribute("action", path);

                                for (var key in params) {
                                    var hiddenField = document.createElement("input");
                                    hiddenField.setAttribute("type", "hidden");
                                    hiddenField.setAttribute("name", key);
                                    hiddenField.setAttribute("value", params[key]);
                                    form.appendChild(hiddenField);
                                }

                                document.body.appendChild(form);
                                form.submit();
                }
            });

            
        }
    });
});

