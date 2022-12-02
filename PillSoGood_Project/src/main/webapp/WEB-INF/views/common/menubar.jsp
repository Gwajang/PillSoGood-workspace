<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <!-- bootstrap -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <!-- bootswatch minty -->
  <link rel="stylesheet" href="https://bootswatch.com/5/minty/bootstrap.css">
  <!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- ajax jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/6cda7ccd12.js" crossorigin="anonymous"></script>

  <!-- 폰트 -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<style>

    div {
        /*border : 1px solid #78C2AD;*/
        box-sizing : border-box;
    }

    /* 전체를 감싸는 wrap */
    .wrap {
        width: 98%;
        height: 1530px;
        margin : auto;
    }

    .wrap>div { width : 100%; }

    #navigator2 { height: 100px; }

    #content { height: 1150px; }
    #content_2>div { width: 100%; }
    #content_2_1 { height: 10%; float: left; }
    #content_2_2 { height: 80%; float: left; }
    #content_2_3 { height: 10%; float: left; }

    #header { height: 130px; }

    #content_2_1>p {
        font-size: 35px;
        color: black;
        margin-top: 20px;
        margin-left: 30px;
    }

    /* content 영역 */
    #content>div { height : 100%; float : left; }
    #content_1 { width : 20%; }
    #content_2 { width : 60%; }
    #content_3 { width : 20%; }

    body { font-family: 'Noto Sans KR', sans-serif !important; }

    ul { font-family: 'Noto Sans KR', sans-serif !important; }  
    ul>li { font-family: 'Noto Sans KR', sans-serif !important; }

    #navibar{
      width: 98%;
      height:100px;
      margin-top: 20px;
      /*position: fixed;*/
    }

    #menubar {
      display: flex;
      justify-content: space-between;

    }

    #menubar ul {
      float: left;
      margin-left: 0 auto;
      margin-left: 25%;
    }

    #menubar li {
      float: left;
      font-size: 18px;
      font-weight: 600;
      /* border: 1px solid black; */
      position:relative;
      margin-left: 40px;
      margin-right: 40px;
    }

    #side {
      display: table-cell;
      vertical-align: middle;
      margin-right: 7%;
    }

    #side>a {
      position: relative;

    }

    .dropdown-item {
      text-align: center;
    }

    .dropdown-menu {
      min-width : 120px;
    }

    .logo>a {
      position: relative;
      margin-left:50%;
      padding-left: 100px;
      margin-top: 10%;
    }

</style>

</head>
<body>
  <div id="navibar">
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid" id="menubar">
      <span class="logo">
        <a class="nav" href="#" style="text-decoration: none;">
          <jsp:include page="logo.jsp" />
        </a>
     </span>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarColor03">
        <ul class="navbar-nav me-auto" id="menubarUl">
          <li class="nav-item" id="menubarLi">
            <a class="nav-link" href="#">소개</a>
          </li>
          <li class="nav-item dropdown" id="menubarLi"> 
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">제품</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">건강설문</a>
            </div>
          </li>
          <li class="nav-item" id="menubarLi">
            <a class="nav-link" href="#">후기</a>
          </li>
          
          
          <li class="nav-item dropdown" id="menubarLi">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">소식</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">이벤트</a>
              <a class="dropdown-item" href="#">매거진</a>
            </div>
          </li>
        
        
        
          <li class="nav-item dropdown" id="menubarLi">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">고객센터</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#">공지사항</a>
              <a class="dropdown-item" href="#">FAQ</a>
              <a class="dropdown-item" href="#">1:1 문의</a>
            </div>
          </li>
        </ul>

        <div class="text-decoration-none" id="side" style="font-size: 15px;">
            <a class="text-decoration-none" href="#" style="color:rgb(92, 93, 96)">장바구니 |</a>
            <a class="text-decoration-none" href="#" style="color:rgb(92, 93, 96)">로그인 |</a>
            <a class="text-decoration-none" href="#" style="color:rgb(92, 93, 96)">회원가입</a>
        </div>
      </div>
    </div>
  </nav>
</div>
</body>
</html>