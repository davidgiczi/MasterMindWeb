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
           <button id="45"  class="input"></button>
           <button id="46"  class="input"></button>
           <button id="47"  class="input"></button>
           <button id="48"  class="input"></button></div><br>
           
           <button id="send" class="control" style="cursor: pointer">Küldés</button>
           
           <button id="new"  style="float: left; cursor: pointer" class="control">Új játék</button>
           
           <button id="show" style="float: right; cursor: pointer" class="control">Minta</button><br>
     
           <div style="float: left"> 
               
       <form style="color: #654321">
         
           <c:if test="${empty checking }">
               Különbőző színek: <input  id="diffColor"  type="checkbox" checked="true" style="cursor: pointer"/> 
           </c:if>
          <c:if test="${not empty checking }">
             Különböző színek: <input  id="diffColor"  type="checkbox" style="cursor: pointer"/> 
          </c:if>
            
              Színek száma: <select  id="colorNumber" style="cursor: pointer">
           
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
       
           <input type="hidden" id="task" value="${task}"/>
           <input type="hidden" id="result" value="${result}"/>
           <input type="hidden" id="tipps" value="${tipps}"/>
           <input type="hidden" id="number" value="${number}"/>
           <input type="hidden" id="msg" value="${message}"/>
           
           <script src="mastermind.js"></script>
   
    </body>
    
      
    
</html>
