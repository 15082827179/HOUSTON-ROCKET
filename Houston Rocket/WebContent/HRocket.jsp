<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<title> HOUSTON ROCKET </title>
	"C:/Users/dell/eclipse-workspace/ConfessionWall"<link rel="stylesheet" type="text/css" href="css/RocMain.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="jquery-3.3.1.js"></script>
    <script type="test/javascript" src="jquery-3.3.1.js/min.js"></script>
    <script type="text/javascript"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script>
		function myFunction(){
				    alert("您好，我们已经收到您的助威留言，感谢您对俱乐部的支持！！！！");
				}
   </script>
   <script type="text/javascript">
        var count=0;
        window.onload = function(){
            var Msg = document.getElementById("msg");
            var Btn = document.getElementById("btn");
            var Msg_c = document.getElementById("msg_c");
            var Ul = document.createElement("ul"); //定义一个有序的列表
            Msg_c.appendChild(Ul);                 //向Msg_c中添加UL节点
            Btn.onclick = function(){              /* 点击留言以后，在Msg_c中添加列表，在列表中添加内容
                                                      在每一条留言后面添加一个<span>标签 使用此标签的onclick属性
                                                    */  
                var MsgValue = Msg.value;          
                var Li = document.createElement("li");
                Li.innerHTML = MsgValue + " <span>删除</span>";
                var arrayLi = Ul.getElementsByTagName("li")   //判断是否是第一个留言
                if(arrayLi.length>0){
                    Ul.insertBefore(Li,arrayLi[0]);
                    count++;
                }else{
                    Ul.appendChild(Li);
                    count++;
                }
                Msg.value='';
                var Span = document.getElementsByTagName("span");
                for(var i=0; i<Span.length; i++){
                    Span[i].onclick = function(){
                      Ul.removeChild(this.parentNode);
                      count--;
                    }
                }
            }
        }
        function totalMessage(){       //统计留言的数量
            alert("一共有"+count+"条留言");
        }
    </script>

</head>
<body>
   <header id=“header_wrapper”>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">HOUSTON ROCKET</a>
    </div>
    <div class="nav1">
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">HOME</a></li>
            <li><a href="#">INFORMATION</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    FANS<b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">MESSAGE BOARD</a></li>
                    <li><a href="#">SHOPING CENTER</a></li>
                    <li><a href="#">TICKETS</a></li>
                    <li><a href="#">CONTEXT US</a></li>
                    <li class="divider"></li>
                    
                </ul>
            </li>
            <li><a href="http://localhost:8080/Houston_Rocket/login.jsp">LOGIN</a></li>
            <li><a href="http://localhost:8080/Houston_Rocket/register.jsp">REGISTER</a></li>

        </ul>
    </div>
    </div>
</nav>
 <!--  <div id="container">
         <div id="logo">
               
                 <image src="logo.jpg" alt="HOUSTON ROCKET logo"  width="187" height="104" >
               
         </div>
          <div class="nav" style="background: none;">
            <ul>
               <li class="active">
                 <a href="#" class="scroll-link">Home</a>
               </li>
               <li class>
                 <a href="#" class="scroll-link">Information</a>
               </li>
               <li class>
                 <a href="#" class="scroll-link">Championship</a>
               </li>
               <li class>
                 <a href="#" class="scroll-link">Message board</a>
               </li>
             </ul>
          </div> -->
     <!--轮播图-->
    
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
       <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
       <li data-target="#carousel-example-generic" data-slide-to="1"></li>
       <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
       <div class="item active">
           <img src="img/5.jpg"  >
           <div class="carousel-caption">
           </div>
       </div>
       <div class="item">
           <img src="img/2.jpg" >
           <div class="carousel-caption">
           </div>
       </div>
       <div class="item">
           <img src="img/3.jpg" >
           <div class="carousel-caption">
           </div>
       </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
       <span class="glyphicon glyphicon-chevron-left"></span>
       <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
       <span class="glyphicon glyphicon-chevron-right"></span>
       <span class="sr-only">Next</span>
    </a>
            
       
     </div>
</header>
	 <div id="table">
   <div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h2>HOUSTON ROCKET</h2>
      
      <div class="fakeimg">
      <image src="img/logo.jpg" alt="HOUSTON ROCKET logo"  width="187" height="104" >
      </div>
      <p id="row123">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspGET RED!!!!!</p>
      
      <h3>链接</h3>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="https://china.nba.com/rockets/">休斯顿火箭中文官网</a></li>
        <li><a href="http://china.nba.com/">NBA中文官网</a></li>
        <li><a href="http://sports.qq.com/">腾讯体育</a></li>
        <li><a href="https://nba.tmall.com/">天猫官方商城</a></li>
      </ul>
      <hr class="hidden-sm hidden-md hidden-lg">
         <div class="player">
       		<h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp数据王</h1>
       		<h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp得分</h3>
            <div class="click">              		
       		<a> 1. JAMES HARDEN &nbsp&nbsp&nbsp 场均：<span class="c">31.5</span> 
       		<input type="checkbox" onmouseover="document.getElementById('har').style.display = 'block'; " onmouseout="document.getElementById('har').style.display = 'none' ;" />
            <img id="har" src="img/har1.png">
                 
            </div>
                        <div class="click">              		
       		<a> 2. Clint Capela  &nbsp&nbsp&nbsp 场均：<span class="c">20.5</span></a>
       		<input type="checkbox" onmouseover="document.getElementById('clint').style.display = 'block'; " onmouseout="document.getElementById('clint').style.display = 'none' ;" />
            <img id="clint" src="img/ktl2.png">
            </div>
            <div class="inner">
                
            </div>
            <a> 3. Chris Paul &nbsp&nbsp&nbsp 场均：<span class="c">21.5</span></a>
            <input type="checkbox" onmouseover="document.getElementById('chris').style.display = 'block'; " onmouseout="document.getElementById('chris').style.display = 'none' ;" />
            <img id="chris" src="img/cris3.png">
            
            
            
       		<h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp篮板</h3>
            <div class="click">              		
       		<a> 1. Clint Capela &nbsp&nbsp&nbsp 场均：<span class="c">11.6个</span> 
       		<input type="checkbox" onmouseover="document.getElementById('clint2').style.display = 'block'; " onmouseout="document.getElementById('clint2').style.display = 'none' ;" />
            <img id="clint2" src="img/clint2.png">
                 
            </div>
                        <div class="click">              		
       		<a> 2. PJ TUCKER &nbsp&nbsp&nbsp 场均：<span class="c">6.2个</span></a>
       		<input type="checkbox" onmouseover="document.getElementById('PJ').style.display = 'block'; " onmouseout="document.getElementById('PJ').style.display = 'none' ;" />
            <img id="PJ" src="img/pj2.png">
            </div>
            <div class="inner">
                
            </div>
            <a> 3. Carmelo-Anthony  &nbsp&nbsp&nbsp 场均：<span class="c">5.4个</span></a>
            <input type="checkbox" onmouseover="document.getElementById('adn').style.display = 'block'; " onmouseout="document.getElementById('adn').style.display = 'none' ;" />
            <img id="adn" src="img/adn3.png">
                     
        </div>
   </div>
    <div class="col-sm-8">
      <h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp赛程信息</h2>
      <p>
      <div class="form" >
          <table class="table table-hover">
            <caption>转至虎扑体育</caption>
              <thead>
                <tr>
                   <th>北京时间</th>
                   <th>live比分</th>
                   <th>对阵情况</th>
                   <th>转播信息</th>

                </tr>
              </thead>
              <tbody>
                <tr>
                   <td>2018-12-01 09:00:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 马刺</td>
                   <td>cctv5,pptv</td>
                </tr>
                <tr>
                   <td>2018-12-02 09:00:00</td>
                   <td>______-----------------______</>
                   <td>公牛 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                   <tr>
                   <td>2018-12-04 09:00:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 森林狼</td>
                   <td>cctv5,pptv</td>
                </tr>
                   <tr>
                   <td>2018-12-07 11:30:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 爵士</td>
                   <td>cctv5,pptv</td>

                </tr>
                   <tr>
                   <td>2018-12-09 07:00:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 独行侠</td>
                   <td>cctv5,pptv</td>
                </tr>
                   <tr>
                   <td>2018-12-12 09:00:00</td>
                   <td>______-----------------______</>
                   <td>开拓者 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                   <tr>
                   <td>2018-12-14 09:00:00 </td>
                   <td>______-----------------______</>
                   <td>湖人 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                 <tr>
                   <td>2018-12-16 09:00:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 灰熊</td>
                   <td>cctv5,pptv</td>
                </tr>
                 <tr>
                   <td>2018-12-18 09:00:00</td>
                   <td>______-----------------______</>
                   <td>爵士 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                <tr>
                   <td>2018-12-20 09:00:00</td>
                   <td>______-----------------______</>
                   <td>奇才 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                <tr>
                   <td>2018-12-21 09:00:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 热火</td>
                   <td>cctv5,pptv</td>
                </tr>
                 <tr>
                   <td>2018-12-23 09:00:00</td>
                   <td>______-----------------______</>
                   <td>马刺 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                 <tr>
                   <td>2018-12-26 04:00:00</td>
                   <td>______-----------------______</>
                   <td>雷霆 vs 火箭</td>
                   <td>cctv5,pptv</td>
                </tr>
                 <tr>
                   <td>2018-12-28 09:00:00</td>
                   <td>______-----------------______</>
                   <td>凯尔特人 vs 火箭</td>
                   <td>cctv5,pptv</td>
                   </tr>
                <tr>
                   <td>2018-12-30 08:00:00</td>
                   <td>______-----------------______</>
                   <td>火箭 vs 鹈鹕</td>
                   <td>cctv5,pptv</td>
                </tr>
              </table> 
      </div>


      </p>
      <br>
      <h2>留言板</h2>
      <h5>MESSAGE BOARD</h5>
      <div class="fakeimg">
                 <div>
                   <div class="topic"><h1>Voice Of Rockets Fans</h1></div>
                   <div class="first">
                        <p  class ="one">We are champions!</p>
                        <p  class ="two">GET RED!!!!</p>
                        <p  class ="three">we are Red nation</p>
                        <p  class ="four">Red Rising</p>
                        <p  class ="five"><strong>A New Age</strong></p>
                        <p  class ="six"><strong>TALK ABOUT YOUR IDEAS</strong></p>
                  </div>
                </div>
   <p>  <div class="wrap">
         <input id="msg" type="text" size="40" value=""style="width:300px;height: 150px;"> 
         <p>
         <input id="btn" type="button" value="留言">
         </p>
        <div id="msg_c"></div>
        <input type="button" value="统计" onclick="totalMessage()"/>
      <!--     <p class="says">说出你的心声</p>
          <form action="HelloForm" methord="post"> 
            <div class="MB">
               
				           <textarea name="comments" color= 20" rows="10">你对新赛季火箭有什么想说的</textarea>
				            <textarea name="ContentName" rows="10" cols="100" class="form-control input-text" placeholder="你对新赛季火箭有什么想说的" id="message" required="" data-validation-required-message="你对新赛季火箭有什么想说的" minlength="5" data-validation-minlength-message="Min 5 characters" maxlength="999" style="resize:none" value="发布"></textarea>
		     </div>		            
         
			        <div>
			           <input type="button"  value="发布"/>
			        </div> 
         </form>
         
 -->    </div>
  </div>
</div>



</body>
				

<!-- <script> -->

<!-- 			</script> -->
<!-- 			<h1 id="showContent">Hello World!</h1> -->
<!-- 			<input id="content" name="content"/> -->
<!-- 			<button onClick="show()">把内容加载在页面上</button> -->

 <div class="jumbotron text-center" style="margin-bottom:0">
  <p>底部内容</p>
</div>
