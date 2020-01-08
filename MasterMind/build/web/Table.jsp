<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MasterMind</title>
        
        <style>
            
            body{
                text-align: center;
            }
            .task{
                
                background-color:#996515;
                border: 1px solid white;
                color: white;
                padding: 32px 32px;
                text-align: center;
                border-radius: 8px;
                
            }
            .field{
                
                background-color:#A57C00;
                border: 1px solid white;
                color: white;
                padding: 32px 32px;
                text-align: center;
                border-radius: 8px;
                
            }
            
            .input{
                
                background-color:#A57C00;
                border: 1px solid white;
                color: white;
                padding: 32px 32px;
                text-align: center;
                border-radius: 8px;
                cursor: pointer;
                
            }
            .control{
             
             background-color: lightyellow;
             color: #654321;
                
            }
            div.relative {
            position: relative;
            left: 25px;
    }
    
    .bef{
        background-color: #dfe5c9;
          border: 3px solid  #dfe5c9;
    }
    
     .in{
        background-color:white;
        border: 0px solid white;
        border-radius: 10px;
    }
      
    .ok{
        background-color: black;
        border: 0px solid black;
        border-radius: 10px;
    }
   
        </style>
            
        
    </head>
    <body style="background-color: #dfe5c9">
        
        <h1 style="color: #996515">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MasterMind Game</h1>
        
        
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
           
           <button class="control" onclick="send()" style="cursor: pointer">Send</button>  
           
           <button onclick="showPattern()" style="float: left; cursor: pointer" class="control">Show</button>
     
           
       <form style="color: #654321">
         
           <c:if test="${empty ch }">
         Different color: <input  id="diffColor"  type="checkbox" checked="true" style="cursor: pointer"/> 
           </c:if>
          <c:if test="${not empty ch }">
         Different color: <input  id="diffColor"  type="checkbox" style="cursor: pointer"/> 
          </c:if>
         
           Number of color: <select id="colorNumber" style="cursor: pointer">
           
               <c:forEach items="${colors}" var="color">
                   
                   <option value="${color}">${color}</option>
                   
               </c:forEach>
               
                 
                              </select>
       
       </form>

           <form action="newgame" id="newForm">
               
       <input type="hidden" id="diff" value="" name="numberOfColor">
       <input type="hidden" id="numb" value="" name="differentColor">
               
           </form>
           
       <button onclick="newGame();doTheClean()" style="float: right; cursor: pointer" class="control">New Game</button>
       
       <form action="play" id="sending">
           
           <input type="hidden" value="" name="color1" id="c1"/>
           <input type="hidden" value="" name="color2" id="c2"/>
           <input type="hidden" value="" name="color3" id="c3"/>
           <input type="hidden" value="" name="color4" id="c4"/>
           
       </form>
       
       
  <script>
        
   var colors = ["#A57C00" ,"#996515", "#69D2E7", "#FA6900", "#1FDA9A", "#E8B71A",
                "#75EB00 ", "#FF432E", "#982395", "#00A03E", "#FFE600", "#67727A"];
            
   var tipp = [1,1,1,1];
 
   var taskStore = ${task};
   var resultStore = ${result};
   var tippStore = ${tipps};
  

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
            tipp[0]++;
            document.getElementById("45").style.backgroundColor= colors[tipp[0]];
            break;
       
            case 1 :
            tipp[1]++;
            document.getElementById("46").style.backgroundColor= colors[tipp[1]];
            break;
            
            case 2 :
            tipp[2]++;
            document.getElementById("47").style.backgroundColor= colors[tipp[2]];
            break;
            
            case 3 :
            tipp[3]++;
            document.getElementById("48").style.backgroundColor= colors[tipp[3]];
    }
      
     if( tipp[0] === colors.length-1 ){
        
        tipp[0] = 1;
    }
    
     if( tipp[1] === colors.length-1 ){
        
        tipp[1] = 1;
    }
    
     if( tipp[2] === colors.length-1 ){
        
        tipp[2] = 1;
    }
    
     if( tipp[3] === colors.length-1 ){
        
        tipp[3] = 1;
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
