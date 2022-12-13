<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 작성</title>
<style>

    div {
        box-sizing : border-box;
    }

    /* 전체를 감싸는 wrap */
    .wrap {
        width: 98%;
        height: 1400px;
        margin : auto; /* 가운데로 좌, 우 자동 정렬*/
    }

    .wrap>div { width : 100%; }

    #navigator2 { height: 100px; }

    #content { height: 1050px;}
    #content_2>div { width: 100%; }
    #content_2_1 { height: 115px; }
    #content_2_2 { color: black; }

    #header { height: 130px; }

    #content_2_1>p {
        font-size: 35px;
        color: black;
        margin-top: 20px;
        margin-left: 30px;
        font-weight: bold;
    }

    /* content 영역 */
    #content>div { height : 100%; float : left; }
    #content_1 { width : 20%; }
    #content_2 { width : 60%; }
    #content_3 { width : 20%; }

    body { font-family: 'Noto Sans KR', sans-serif !important; }

    /* 영섭 작업 영역 시작 */

    /* content_2_2 영역 분배 */
    #content_2_2>div { width: 100%;}        

    #insert_btn { text-align: center; }

    /* 요소들 스타일 */
    #insert_btn button {
        height: 45px;
        width: 200px;
        margin: auto;
    }

    /* 영섭 작업 영역 끝 */

    .form-control {
        margin-left: 0px;
        width: 95%!important;
        margin: auto;
    }

    #content_2_2 p {
    	margin-left: 30px;
        font-weight: bold;
        font-size: large;
    }
</style>
</head>
<body>

	<div class="wrap">
        <div id="navigator2">
        	<jsp:include page="../common/menubar.jsp" />
        </div>
        <div id="header"></div>
        <div id="content">
            <div id="content_1"></div>
            <div id="content_2">
                <div id="content_2_1">
                    <p>1:1 문의</p>
                </div>
                <div id="content_2_2">

                    <form action="insert.qu" method="post" enctype="multipart/form-data">
                    	<input type="hidden" name="memberNo" value="${ loginUser.memberNo }">
                        <!-- 영섭 작업 영역 시작 -->

                        <!-- 제목 부분 -->
                        <div>
                            <p>제목</p>
                            <input type="text" class="form-control" name="questionTitle" placeholder="문의 제목을 입력해주세요 (30자 이내)" required>
                        </div>
                        <br>
                        
                        <!-- 내용 부분 -->
                        <div>
                            <p>내용</p>
                            <textarea name="questionContent" cols="20" rows="15" class="form-control" placeholder="문의 내용을 입력해주세요 (1000자 이내)" style="resize: none;" required></textarea>
                        </div>
                        <br>
                        
                        <!-- 사진첨부 부분 -->
                        <div>
                            <p>사진첨부(선택)</p>
                            <input type="file" class="form-control" name="upfile">
                        </div>
                        <br><br>

                        <!-- 등록 버튼 -->
                        <div id="insert_btn">
                            <br><br>
                            <button type="submit" class="btn btn-primary">등록하기</button>
                            <button type="button" class="btn btn-secondary" onclick="location.href='list.qu'">뒤로가기</button>
                        </div>

                        <!-- 영섭 작업 영역 끝 -->
                    </form>
                </div>
            </div>
            <div id="content_3"></div>
        </div>
        <jsp:include page="../common/footer.jsp" />
    </div>

</body>
</html>