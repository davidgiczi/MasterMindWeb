<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MasterMind</title>
        <link rel="stylesheet" type="text/css" media="screen" href="mastermind.css" />
        
    </head>
    <body style="background-color: #dfe5c9">
        
        <h1 style="color: #996515">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MasterMind</h1>
        
        
    <table align="center">        
        <tr><td></td>
        <td>
             <button style="color:#996515" id="1" class="task"></button>
             <button style="color:#996515" id="2" class="task"></button>
             <button style="color:#996515" id="3" class="task"></button>
             <button style="color:#996515" id="4" class="task"></button>
        </td>
</tr>
        
    <tr>
        <td><input id="101" class="bef" type="button">
            <input id="102" class="bef" type="button"><br>
            <input id="103" class="bef" type="button">
            <input id="104" class="bef" type="button"></td>
        <td>
           <button id="5" class="field"></button>
           <button id="6" class="field"></button>
           <button id="7"  class="field"></button>
           <button id="8" class="field"></button>
    
        </td>
    </tr>
      
    <tr>
        <td><input id="105" class="bef" type="button">
            <input id="106" class="bef" type="button"><br>
            <input id="107" class="bef" type="button">
            <input id="108" class="bef" type="button"></td>
        
        <td>        
           <button id="9" class="field"></button>
           <button id="10" class="field"></button>
           <button id="11"  class="field"></button>
           <button id="12" class="field"></button>
        </td>
    </tr>
    <tr>  
        <td><input id="109" class="bef" type="button">
            <input id="110" class="bef" type="button"><br>
            <input id="111" class="bef" type="button">
            <input id="112" class="bef" type="button"></td>
    <td>
           <button id="13"  class="field"></button>
           <button id="14" class="field"></button>
           <button id="15" class="field"></button>
           <button id="16" class="field"></button></td>
  </tr>     
  
  <tr>
      <td><input id="113" class="bef" type="button">
          <input id="114"  class="bef" type="button"><br>
          <input id="115" class="bef" type="button">
          <input id="116" class="bef" type="button"></td>
  <td>
           <button id="17" class="field"></button>
           <button id="18" class="field"></button>
           <button id="19" class="field"></button>
           <button id="20" class="field"></button></td>
  </tr>  
  
  <tr>
      <td><input id="117" class="bef" type="button">
          <input id="118" class="bef" type="button"><br>
          <input id="119" class="bef" type="button">
          <input id="120" class="bef" type="button"></td>
      
      <td>
           <button id="21" class="field"></button>
           <button id="22" class="field"></button>
           <button id="23" class="field"></button>
           <button id="24" class="field"></button></td>
 </tr> 
 
 <tr><td><input id="121" class="bef" type="button">
         <input id="122" class="bef" type="button"><br>
         <input id="123" class="bef" type="button">
         <input id="124" class="bef" type="button"></td>
     <td>
           <button id="25" class="field"></button>
           <button id="26" class="field"></button>
           <button id="27" class="field"></button>
           <button id="28" class="field"></button></td>
 </tr>
 
 <tr>
     <td><input id="125"  class="bef" type="button">
         <input id="126" class="bef" type="button"><br>
         <input id="127" class="bef" type="button">
         <input id="128"  class="bef" type="button"></td>
     <td>
           <button  id="29" class="field"></button>
           <button  id="30" class="field"></button>
           <button  id="31" class="field"></button>
           <button id="32" class="field"></button></td>
   </tr>
   <tr>
       <td><input id="129" class="bef" type="button">
           <input id="130" class="bef" type="button"><br>
           <input id="131" class="bef" type="button">
           <input id="132" class="bef" type="button"></td>
   <td> 
           <button id="33" class="field"></button>
           <button id="34" class="field"></button>
           <button id="35" class="field"></button>
           <button id="36" class="field"></button></td>
  </tr>          
  <tr>
      <td><input id="133" class="bef" type="button">
          <input  id="134" class="bef" type="button"><br>
          <input id="135" class="bef" type="button">
          <input id="136" class="bef" type="button"></td>
    
    <td>
           <button id="37" class="field"></button>
           <button id="38" class="field"></button>
           <button id="39" class="field"></button>
           <button id="40" class="field"></button></td>
 </tr> 
 
 <tr>
     <td><input id="137" class="bef" type="button">
         <input id="138" class="bef" type="button"><br>
         <input id="139" class="bef" type="button">
         <input id="140" class="bef" type="button"></td>
     <td>
           <button id="41" class="field"></button>
           <button id="42" class="field"></button>
           <button id="43" class="field"></button>
           <button id="44" class="field"></button></td>
 </tr>    
 
 
   </table>        
       <hr>
       <div class="relative">
           <button id="45" onclick="changeColor(0)" class="input"></button>
           <button id="46" onclick="changeColor(1)" class="input"></button>
           <button id="47" onclick="changeColor(2)" class="input"></button>
           <button id="48" onclick="changeColor(3)" class="input"></button></div><br>
           
           <button id="send" class="control" onclick="send();" style="cursor: pointer">Küldés</button>  
           
           <button onclick="newGame();doTheClean()" style="float: left; cursor: pointer" class="control">Új játék</button>
           
           <button onclick="showPattern()" style="float: right; cursor: pointer" class="control">Minta</button><br>
     
           <div style="float: left"> 
               
       <form style="color: #654321">
         
           <c:if test="${empty checking }">
               Különbőző színek: <input onchange="disabledSendButton()" id="diffColor"  type="checkbox" checked="true" style="cursor: pointer"/> 
           </c:if>
          <c:if test="${not empty checking }">
             Különböző színek: <input onchange="disabledSendButton()" id="diffColor"  type="checkbox" style="cursor: pointer"/> 
          </c:if>
            
              Színek száma: <select onchange="disabledSendButton()" id="colorNumber" style="cursor: pointer">
           
               <c:forEach items="${numberOfColors}" var="color">
                   
                   <c:choose>
                    <c:when test="${color == number}">
                         
                        <option value="${color}" selected="selected">${color}</option>
                   </c:when>
                   
                        <c:otherwise>
                        <option value="${color}">${color}</option>
                        </c:otherwise>
                   
                    </c:choose>
               </c:forEach>
               
          
                              </select>
       
       </form>
</div>
           <form action="newgame" id="newForm">
               
       <input type="hidden" id="diff" value="" name="differentColor">
       <input type="hidden" id="numb" value="" name="numberOfColor">
               
           </form>
           
       
       
       <form action="play" id="sending">
           
           <input type="hidden" value="" name="color1" id="c1"/>
           <input type="hidden" value="" name="color2" id="c2"/>
           <input type="hidden" value="" name="color3" id="c3"/>
           <input type="hidden" value="" name="color4" id="c4"/>
           <input type="hidden" value="" name="different" id="c5"/>
           <input type="hidden" value="" name="number" id="c6"/>
           
       </form>
       
       <!--<input id="task" type="hidden" value="${task}"/>
           <input id="result" type="hidden" value="${result}"/>
           <input id="tipps" type="hidden" value="${tipps}"/>
           <input id="number" type="hidden" value="${number}"/>
           <input id="msg" type="hidden" value="${message}"/> -->
           
   <script>
        
   var colors = ["#69D2E7", "#FA6900", "#1FDA9A", "#E8B71A", "#75EB00",
                "#FF432E", "#982395", "#00A03E", "#FFE600", "#67727A"];
    
   var text = ["Gratulálunk!", "A játéknak vége.",
               "Szeretnél új játékot kezdeni?"];
    
   var tipp = [-1,-1,-1,-1];
   
   var taskStore = ${task};
   var resultStore = ${result};
   var tippStore = ${tipps};
   var colorNumber = ${number};
   var msg = ${message};
  
  document.getElementById("send").disabled = false;
    
   if( msg === 1 ) {
       
      if ( confirm( text[0]+" "+text[2] ) ) {
          
          doTheClean();
          newGame();
      }
      else {
          disabledSendButton();
         
      }
       
   } 
   else if ( msg === 2) {
       
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
            document.getElementById("45").style.backgroundColor= colors[tipp[0]];
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
       
       document.getElementById("1").style.backgroundColor= colors[taskStore[0]];
       document.getElementById("2").style.backgroundColor= colors[taskStore[1]];
       document.getElementById("3").style.backgroundColor= colors[taskStore[2]];
       document.getElementById("4").style.backgroundColor= colors[taskStore[3]];
     
    }
    
    function send() {
    
    document.getElementById("c1").value = tipp[0];
    document.getElementById("c2").value = tipp[1];
    document.getElementById("c3").value = tipp[2];
    document.getElementById("c4").value = tipp[3];
    
    var checking = document.getElementById("diffColor").checked; 
    var number = document.getElementById("colorNumber").value;
    
    document.getElementById("c5").value = checking;
    document.getElementById("c6").value = number;
    
    document.getElementById("sending").submit();
    
}

function doTheClean() {
  
 
 for (var i = 101; i < 141; i++) {
    
    document.getElementById(i).classList.remove("ok");
    document.getElementById(i).classList.remove("in");
    
}
  
}

function newGame() {
    
    var checking = document.getElementById("diffColor").checked; 
    var number = document.getElementById("colorNumber").value;
     
     document.getElementById("diff").value = checking;
     document.getElementById("numb").value = number;
      
     document.getElementById("newForm").submit();
    
}
   </script>
   
    </body>
    
      
    
</html>
