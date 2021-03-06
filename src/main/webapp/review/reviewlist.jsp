<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%
   request.setCharacterEncoding("UTF-8");
%>
<%
   response.setContentType("text/html; charset=UTF-8");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/27cb20e940.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


<link rel="stylesheet"
   href="${pageContext.request.contextPath }/css/pagecss.css?ver=1">
<script type="text/javascript"
   src="${pageContext.request.contextPath }/js/pagejs.js?ver=1"></script>



</head>

<style type="text/css">
a {
   text-decoration: none;
}

.tr {
   display: inline-block;
   padding-left: 30px;
}

.writeBtn {
   padding-left: 50%;
}

.serach {
   padding-left: 50%;
   padding-top: 1%;
}

#tr_my {
   background-color: #EAEAEA;
   width: 144.67px;
   height: 30px;
   font-family: HanSans;
   color: black;
   font-size: 14px;
   border-top-color: #ccc;
   border-bottom-color: #ccc;
}

#thead {
   top: 500px;
}

#table_my {
   border-collapse: collapse;
   border: thick white;
   border-bottom-color: #ccc;
   left: 0px;
   text-align: center;
}

#writebtn {
   position: absolute;
   font-size: 16px;
   color: rgb(255, 255, 255);
   text-align: center;
   line-height: 2.0em;
   border-radius: 4px;
   background-color: rgb(94, 94, 94);
   top: 10px;
   right: 350px;
   height: 1px auto;
   width: 0px auto;
}

.serachBox tablearea {
   width: 100%;
   margin: auto;
   text-align: center;
}

.fullContent {
   float: left;
   width: 1500px;
   margin: 20px auto;
   text-align: center;
   padding: 50px 20px;
}

.paging tr {
   margin: 0px auto;
   text-align: center;
   width: 100%;
}

#BTNsearch {
   position: relative;
   font-size: 16px;
   color: rgb(64, 64, 64);
   text-align: center;
   line-height: 1.5em;
   border-radius: 3px;
   background-color: white;
   top: 0px;
   height: 1px auto;
   width: 0px auto;
   left: 7px;
}

#span_my {
   top: 60px;
   margin: 0px auto;
}

#paging_out {
   float: none;
   width: 100%;
   text-align: center;
   margin: 0px auto;
}

#paging_in {
   display: inline-block;
}
</style>



<body>

   <jsp:include page="../pageheader.jsp"></jsp:include>
   <!-- ============================================= B O D Y =================================================== -->
   <!-- ============================================= B O D Y =================================================== -->
   <!-- ============================================= B O D Y =================================================== -->

   <br />
   <br />
   <div data-text-content="true"
      style="font-size: 35px; line-height: 1.9em; text-align: center; font-weight: normal; font-style: italic; margin: auto;"
      class="" spellcheck="false">Review</div>
   <div class="fullContent"
      style="border-collapse: collapse; position: relative; top: 70px; float: center;">
      <div class="tablearea" align="center">
         <table border="1" id="table_my">
            <col width="100">
            <col width="100">
            <col width="300">
            <col width="100">
            <col width="100">
            <col width="100">
            <thead id="thead">
               <tr id="tr_my">
                  <th>?????????</th>
                  <th>??????</th>
                  <th>??????</th>
                  <th>??????</th>
                  <th>?????????</th>
                  <th>?????????</th>
               </tr>
            </thead>
            <tbody>
               <c:choose>
                  <c:when test="${empty list }">
                     <tr>
                        <td colspan="6" align="center" style="height: 30px;">-----?????????
                           ?????? ????????????????????????-----</td>
                     </tr>
                  </c:when>
                  <c:otherwise>
                     <c:forEach items="${list }" var="dto">
                        <tr>
                           <td>${dto.reviewboard_no }</td>

                           <c:if test="${dto.reviewboard_category eq 1 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 2 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 3 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 4 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 5 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 6 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 7 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 8 }">
                              <td>??????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 31 }">
                              <td>?????????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 32 }">
                              <td>?????????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 33 }">
                              <td>?????????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 34 }">
                              <td>?????????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 35 }">
                              <td>?????????</td>
                           </c:if>
                           <c:if test="${dto.reviewboard_category eq 36 }">
                              <td>?????????</td>
                           </c:if>

                           <td><c:forEach begin="0" end="${reviewboard_titletab }">
                           &nbsp;
                        </c:forEach> <a
                              href="review.do?command=boarddetail&boardno=${dto.reviewboard_no }&hits=${dto.reviewboard_hits}&pagenum=${pm.pagenum}">${dto.reviewboard_title }</a>
                           </td>

                           <td>${dto.reviewboard_id }</td>
                           <td><fmt:formatDate value="${dto.reviewboard_regdate }"
                                 pattern="yy-MM-dd" /></td>
                           <td>${dto.reviewboard_hits }</td>
                        </tr>
                     </c:forEach>
                  </c:otherwise>
               </c:choose>
            </tbody>

         </table>
      </div>
      <br />


      <div class="writeBtn tr">
         <a href="review.do?command=writeform&id=${id.member_id}"
            id="writebtn"><span>?????????</span> </a>
      </div>

      <div id="paging_out">
         <div id="paging_in">
            <c:choose>
               <c:when test="${text eq 'searchitems' }">

                  <div class="paging tr">
                     <c:if test="${pm.prev }">
                        <a
                           href="review.do?command=searchitems&contentnum=10&pagenum=${pm.pagenum-1}&query=${query}&location=&${location}&item=${item}">
                           <span>???</span>
                        </a>
                     </c:if>
                     <c:forEach begin="${pm.startPage }" end="${pm.endPage }"
                        var="idx">
                        <a
                           href="review.do?command=searchitems&contentnum=10&pagenum=${idx}&query=${query}&location=&${location}&item=${item}">
                           <span> <b><c:out value="[${idx }]"></c:out></b>
                        </span>
                        </a>
                     </c:forEach>
                     <c:if test="${pm.next }">
                        <a
                           href="review.do?command=searchitems&contentnum=10&pagenum=${pm.pagenum+1}&query=${query}&location=&${location}&item=${item}">
                           <span>???</span>
                        </a>
                     </c:if>
                  </div>
               </c:when>
               <c:otherwise>
                  <div class="paging tr">
                     <c:if test="${pm.prev }">
                        <a
                           href="review.do?command=reviewboard&contentnum=10&pagenum=${pm.pagenum-1}">
                           <span>???</span>
                        </a>
                     </c:if>
                     <c:forEach begin="${pm.startPage }" end="${pm.endPage }"
                        var="idx">
                        <a
                           href="review.do?command=reviewboard&contentnum=10&pagenum=${idx}">
                           <span> <b><c:out value="[${idx }]"></c:out></b>
                        </span>
                        </a>
                     </c:forEach>
                     <c:if test="${pm.next }">
                        <a
                           href="review.do?command=reviewboard&contentnum=10&pagenum=${pm.pagenum+1}">
                           <span>???</span>
                        </a>
                     </c:if>
                  </div>


               </c:otherwise>
            </c:choose>
         </div>
      </div>




      <!-- ?????? ?????? -->
      <div class="serachBox tablearea">
         <form action="review.do" method="get" id="searchOPT">
            <input type="hidden" name="command" value="searchitems"> 
            <input type="hidden" name="pagenum" value="1"> 
            <input type="hidden" name="contentnum" value="10">

            <table id="table_sc" align="center">
            <tr>               
               <td align="center">
      
                  <div id="span_my">
                     <span> 
                     <select name="item" id="item" style="width: 95px; height: 25px; border-color: #ccc;">
                           <option value="11">??????+??????</option>
                           <option value="12">??????</option>
                           <option value="13">??????</option>
                           <option value="14">?????????</option>
                           <option value="15">??????</option>
                     </select>
                     <select id="location" name="location" style="display: none; width: 95px; height: 25px; border-color: #ccc;">
                     <option value="0">??????????????????</option>
                     <option value="1">??????</option>
                     <option value="2">??????</option>
                     <option value="3">??????</option>
                     <option value="4">??????</option>
                     <option value="5">??????</option>
                     <option value="6">??????</option>
                     <option value="7">??????</option>
                     <option value="8">??????</option>
                     <option value="31">?????????</option>
                     <option value="32">?????????</option>
                     <option value="33">?????????</option>
                     <option value="34">?????????</option>
                     <option value="35">?????????</option>
                     <option value="36">?????????</option>
                     </select>            
                     
                     </span> 
                     <span> <input type="text" name="query" id="query" style="width: 200px; height: 20px;">
                     </span> 
                     <span> <input type="submit" value="??????" id="BTNsearch">   </span>
                  </div>
                  </td>
               </tr>               
            </table>

         </form>

      </div>
   </div>
   <br />
   <br />
   
   <script type="text/javascript">
      
         $("#item").change(function(){
         var status =$("#item option:selected").val();
            if(status == 15){
               $("#location").show();
            }else{
               $("#location").hide();
            }
               
         });   
      </script>
      
      <script type="text/javascript">   
      $("#BTNsearch").click(function(){
      
         if($("#query").length==0){
            alert("???????????? ????????? ?????????!");
            return false;
         }
      
      });
   </script>
   

   <!-- ============================== F O O T E R ======================================== -->
   <!-- ============================== F O O T E R ======================================== -->
   <!-- ============================== F O O T E R ======================================== -->
   <jsp:include page="../pagefooter.jsp"></jsp:include>
</body>
</html>