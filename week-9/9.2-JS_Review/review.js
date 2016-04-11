// Input: 16 digit number
// Output: true/false or ArgumentError

// Steps:
// Check that input is 16 numbers
// Separate number into 16 individual numbers
// Double every other digit
// IF doubled digit >9, break into two numbers
// Sum all digits
// IF total is a multiple of ten
//    RETURN true
// ELSE RETURN false

function checkCard(number) {
  if(number.toString().length!==16){throw "Credit card number must be 16 digits"};

  initial = number.toString().split("");
  for(var i=0;i<16;i++){
    initial[i] = parseInt(initial[i]);
    if(i%2==0){initial[i]*=2}; //double every other digit
    if(initial[i].toString().length>1){initial[i] =initial[i].toString().split("")};
    initial[i] = parseInt(initial[i]);
    flattened = [].concat.apply([],initial);
    flattened = flattened.reduce((a,b)=>a+b,0);
    if(flattened % 10 ==0){return true} else{return false};

  };
};

checkCard(1234567890123456)