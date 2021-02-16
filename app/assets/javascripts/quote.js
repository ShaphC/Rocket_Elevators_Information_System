/*
1.Hides the form at start up
2.when the dropdown is changed
it hides all the form elements that have the name form-field in its class
3.Shows the form elements with the same EXACT class name 
*/
$(document).ready(function() {
    $('[class*=form-field]').hide();

    $("#building-type").change(function() {
        $('[class*=form-field]').hide();
        $("." + $(this).val()).show();
    });

    $("#building-type").change(function() {
        /*Erases the inputs and radio buttons when
        the select options change*/
        //console.log($("#building-type").val())
        $('.data').val('');
        $("input[name=product]").prop('checked', false);
        if($("#building-type").val() === "residential"){
            $("#resForm").on('input', function(event){
                event.preventDefault();
                
                var num1 = $('#numApart').val();
                var num2 = $('#numFloor').val();
                var prod = $('input[name="product"]:checked').val();
                //Sends the data that was grabbed and sends it to the server
                $.ajax({
                    method: 'post',
                    //url: 'http://localhost:5000/residential',
                    url: 'https://nodequoteform.herokuapp.com/residential',
                    //data: formData,
                    data: JSON.stringify({ num1: num1, num2: num2, prod: prod }),
                    contentType: 'application/json',
                    success: function(data) {
                        results(data.totElev, data.answer, data.answer2, data.answer3, data.totPrice);
                    }
                })
            });
        }else if($("#building-type").val() === "commercial"){
            $("#comForm").on('input', function(event){
                event.preventDefault();
                
                var num3 = $('#numCage').val();
                var prod = $('input[name="product"]:checked').val();

                $.ajax({
                    method: 'post',
                    //url: 'http://localhost:5000/commercial',
                    url: 'https://nodequoteform.herokuapp.com/commercial',
                    //data: formData,
                    data: JSON.stringify({ num3: num3, prod: prod }),
                    contentType: 'application/json',
                    success: function(data) {
                        //console.log(data)
                        results(data.totElev, data.answer, data.answer2, data.answer3, data.totPrice);
                    }
        
                })
            });
        }else if($("#building-type").val() === "corporate"){
            $("#corForm").on('input', function(event){
                event.preventDefault();
                
                var num4 = $('#numFloor3').val();
                var num5 = $('#numBase3').val();
                var num6 = $('#occpFloor').val();
                var prod = $('input[name="product"]:checked').val();

                $.ajax({
                    method: 'post',
                    //url: 'http://localhost:5000/corporate',
                    url: 'https://nodequoteform.herokuapp.com/corporate',
                    //data: formData,
                    data: JSON.stringify({ num4: num4, num5: num5, num6: num6, prod: prod }),
                    contentType: 'application/json',
                    success: function(data) {
                        //console.log(data)
                        results(data.totElev, data.answer, data.answer2, data.answer3, data.totPrice);
                    }
        
                })
            });
        }else if($("#building-type").val() === "hybrid"){
            $("#hybForm").on('input', function(event){
                event.preventDefault();
                
                var num7 = $('#numFloor4').val();
                var num8 = $('#numBase4').val();
                var num9 = $('#occpFloor2').val();
                var prod = $('input[name="product"]:checked').val();

                $.ajax({
                    method: 'post',
                    //url: 'http://localhost:5000/hybrid',
                    url: 'https://nodequoteform.herokuapp.com/hybrid',
                    //data: formData,
                    data: JSON.stringify({ num7: num7, num8: num8, num9: num9, prod: prod }),
                    contentType: 'application/json',
                    success: function(data) {
                        //console.log(data)
                        results(data.totElev, data.answer, data.answer2, data.answer3, data.totPrice);
                    }
        
                })
            });
        }
    });
});


//Keeps user from entering Negative values
function positive()
{
  var number = document.getElementsByTagName("input");
  for(var i = 0; i < number.length; i++)

    if(number[i].value < 0)
    {
      alert("No negative numbers, please");
      //resets the input box to empty 
      number[i].value = "";
    }
}

//Keeps the user from entering more than 24 hours or less than 1 hour
function hours()
{
  var hour = document.getElementById("numHour");
  if (hour.value <= 0 || hour.value > 24)
  {
    alert("Hours must be between 1 and 24");
    document.getElementById("numHour").value = "";
  }
}

/*This takes the values that were recieved from the server
and sends then to the read only fields*/
function results(totElev, answer, answer2, answer3, totPrice)
{
    $('#result0').val(totElev);
    //console.log(totElev)
    $('#result1').val(answer);
    //console.log(answer)
    $('#result2').val(answer2);
    //console.log(answer2)
    $('#result3').val(answer3);
    //console.log(answer3)
    $('#result4').val(totPrice);
    //console.log(totPrice)
}
