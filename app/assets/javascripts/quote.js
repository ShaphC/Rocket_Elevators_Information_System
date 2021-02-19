/*
1.Hides the form at start up
2.when the dropdown is changed
it hides all the form elements that have the name form-field in its class
3.Shows the form elements with the same EXACT class name 
*/
$(document).ready(function() {
    
    $("#building-type").change(function() {
        $('.data').val('');
        $("input[name=product]").prop('checked', false);
        if($("#building-type").val() === "residential"){
            $("#number-of-apartments, #number-of-floors, #number-of-basements, #productLine").show()
            $("#number-of-companies, #number-of-parking-spots, #number-of-elevators, #number-of-corporations, #maximum-occupancy, #business-hours").hide()
        }else if($("#building-type").val() === "commercial"){
            $("#number-of-companies, #number-of-floors, #number-of-basements,#number-of-parking-spots, #number-of-elevators, #productLine").show()
            $("#number-of-apartments, #number-of-corporations, #maximum-occupancy, #business-hours").hide()
        }else if($("#building-type").val() === "corporate"){
            $("#number-of-corporations, #number-of-floors, #number-of-basements, #number-of-parking-spots, #maximum-occupancy, #productLine").show()
            $("#number-of-apartments, #number-of-elevators, #number-of-companies, #business-hours").hide()
        }else if($("#building-type").val() === "hybrid"){
            $("#number-of-companies, #number-of-floors, #number-of-basements, #number-of-parking-spots, #maximum-occupancy, #business-hours, #productLine").show()
            $("#number-of-apartments, #number-of-elevators").hide()
        }
    })

    $("#building-type").change(function() {
        $('.data').val('');
        $("input[name=product]").prop('checked', false);
        $("#buildingForm").on('input', function(event){
            event.preventDefault();

                var formInfo = {
                    num0: $('#building-type').val(),
                    num1: $('#numApart').val(),
                    num2: $('#numFloor').val(),
                    num3: $('#numCage').val(),
                    num4: $('#numBase').val(),
                    num5: $('#occpFloor').val(),
                    prod: $('input[name="quote[product]"]:checked').val()
                }

                transmit(formInfo)
        });
    });

    function transmit(formInfo){
        $.ajax({
            method: 'post',
            //url: 'http://localhost:5000/calculate',
            url: 'https://nodequoteserverimproved.herokuapp.com/calculate',
            data: JSON.stringify(formInfo),
            contentType: 'application/json',
            success: function(data) {
                results(data.totElev, data.unitPriceCalc, data.unitPricePerElev, data.unitPriceTotElev, data.totPrice);
            }
        })
    }


    function results(totElev, unitPriceCalc, unitPricePerElev, unitPriceTotElev, totPrice)
    {
        $('#result0').val(totElev);
        //console.log(totElev)
        $('#result1').val(unitPriceCalc);
        //console.log(unitPriceCalc)
        $('#result2').val(unitPricePerElev);
        //console.log(unitPricePerElev)
        $('#result3').val(unitPriceTotElev);
        //console.log(unitPriceTotElev)
        $('#result4').val(totPrice);
        //console.log(totPrice)
    }


    //Jquery - Keeps user from entering Negative values
    $('.data').on('input', function() {
        if($('.data').val() < 0)
        {
        alert("No negative numbers, please");
        //resets the input box to empty 
        $('.data').val('')
        }
    });


    $('#numHour').on('input', function() {
        if ($('#numHour').val() <= 0 || $('#numHour').val() > 24) {
            alert("Hours must be between 1 and 24");
            $('#numHour').val('')
        }
    })

});