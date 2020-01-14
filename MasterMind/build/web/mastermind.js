   
   var colors = ["#69D2E7", "#FA6900", "#1FDA9A", "#E8B71A", "#75EB00",
                "#FF432E", "#982395", "#00A03E", "#FFE600", "#67727A"];
    
   var text = ["Gratulálunk!", "A játéknak vége.",
               "Szeretnél új játékot kezdeni?"];
    
   var tipp = [-1,-1,-1,-1];
   
  var taskStore = JSON.parse(document.getElementById("task").value);
  var tippStore = JSON.parse(document.getElementById("tipps").value);
  var resultStore = JSON.parse(document.getElementById("result").value);
 
  var msg = document.getElementById("msg").value;
 
  
  document.getElementById("send").disabled = false;
  
   document.getElementById("show").addEventListener("click", showPattern);
   document.getElementById("diffColor").addEventListener("change", disabledSendButton);
   document.getElementById("colorNumber").addEventListener("change", disabledSendButton);
   document.getElementById("send").addEventListener("click", send);
   document.getElementById("new").addEventListener("click", newGame);
   document.getElementById("new").addEventListener("click", doTheClean);
   document.getElementById("45").addEventListener("click", function(){ changeColor(0); });
   document.getElementById("46").addEventListener("click", function(){ changeColor(1); });
   document.getElementById("47").addEventListener("click", function(){ changeColor(2); });
   document.getElementById("48").addEventListener("click", function(){ changeColor(3); });
   
   var checking = document.getElementById("diffColor").checked;
   var colorNumber = parseInt(document.getElementById("number").value);
   
   document.getElementById("diffColor").addEventListener("change", function () {
  
   checking = document.getElementById("diffColor").checked; 
  
});
   
   document.getElementById("colorNumber").addEventListener("change", function () {
    
     colorNumber = parseInt(document.getElementById("colorNumber").value);  
    
});
   
  
   if( msg == 1 ) {
       
      if ( confirm( text[0]+" "+text[2] ) ) {
          
          doTheClean();
          newGame();
      }
      else {
          disabledSendButton();
         
      }
       
   } 
   else if ( msg == 2) {
       
       if ( confirm( text[1]+" "+text[2] ) ) {
          
          doTheClean();
          newGame();
      }
       else {
           
           disabledSendButton();
           
       }
   }
  
  function disabledSendButton() {
      
    document.getElementById("send").disabled = true;
  
}
          
  for (var i = 0; i < tippStore.length; i++) {
      
    document.getElementById(i+5).style.backgroundColor = colors[tippStore[i]];
   
   if( resultStore[i] === 1 ){
    
    document.getElementById(i+101).classList.add("ok");
    
 
   }
   else if( resultStore[i] === 0 ) {
       
     document.getElementById(i+101).classList.add("in");
    
   }
   
}


   function changeColor(buttonId) {
    
   
      switch ( buttonId ) {
       
            case 0 :
               
     if( tipp[0] === colorNumber-1 ){
        
        tipp[0] = -1;
    }
                
            tipp[0]++;
            document.getElementById("45").style.backgroundColor = colors[tipp[0]];
            break;
       
            case 1 :
      
      if( tipp[1] === colorNumber-1 ){
        
        tipp[1] = -1;
    }
            tipp[1]++;
            document.getElementById("46").style.backgroundColor= colors[tipp[1]];
            break;
            
            case 2 :
                
     if( tipp[2] === colorNumber-1 ){
        
        tipp[2] = -1;
    }
            tipp[2]++;
            document.getElementById("47").style.backgroundColor= colors[tipp[2]];
            break;
            
            case 3 :
                
      if( tipp[3] === colorNumber-1 ){
        
        tipp[3] = -1;
    }
            tipp[3]++;
            document.getElementById("48").style.backgroundColor= colors[tipp[3]];
    }
    
    
 } 
   
 
   function showPattern() {
       
     document.getElementById("1").style.backgroundColor = colors[taskStore[0]];
     document.getElementById("2").style.backgroundColor = colors[taskStore[1]];
     document.getElementById("3").style.backgroundColor = colors[taskStore[2]];
     document.getElementById("4").style.backgroundColor = colors[taskStore[3]];
     
    }
   
    function send() {
    
   document.getElementById("c1").value = tipp[0];
   document.getElementById("c2").value = tipp[1];
   document.getElementById("c3").value = tipp[2];
   document.getElementById("c4").value = tipp[3];
    
   document.getElementById("c5").value = checking;
   document.getElementById("c6").value = colorNumber;
    
   document.getElementById("sending").submit();
    
}

function doTheClean() {
  
 
 for (var i = 101; i < 141; i++) {
    
    document.getElementById(i).classList.remove("ok");
    document.getElementById(i).classList.remove("in");
    
}
  
}

function newGame() {
    
     document.getElementById("diff").value = checking;
     document.getElementById("numb").value = colorNumber;
     
    document.getElementById("newForm").submit();
    
}