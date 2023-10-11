<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/header.jsp"%>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">온라인 상담</h4>

				<form role="form" action="/inquery/register" method="post">
					<div class="row">
						<div class="col-3 form-group">
							<label for="root">문의 과정 선택</label> <select
								class="custom-select d-block w-100 " id="root"
								name="course_code">
								<option value=""></option>
								<option value="1">부천-국비과정</option>
								<option value="10">화곡-국비과정</option>
							</select>
							<div class="invalid-feedback">가입 경로를 선택해주세요.</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-4 mb-3">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" name="name" value="${member.NAME}"
								value="" required>
							<div class="invalid-feedback">이름을 입력해주세요.</div>
						</div>
					</div>

					<div class="row form-group">
						<div class="col-md-6 mb-3" hidden>
							<label for="STU_ID">학생 아이디</label> <input class="form-control"
								id="STU_ID" name="stu_id" value="${member.STU_ID}" readonly>
						</div>
						<!--  <div class="col-md-6 mb-3">
              <label for="name">학생 아이디</label>
              <input type="text" class="form-control" id="stu_id" name="stu_id" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>-->
					</div>

					<!--  -->

					<div class="row g-2">

						<div class="row form-group">
							<div class="col-3">
								<label for="floatingSelectGrid">연락수단선택</label> <select
									class="form-select" id="floatingSelectGrid"
									aria-label="Floating label select example">
									<option value="1">이메일</option>
									<option value="2">핸드폰번호</option>
								</select>
							</div>
							<div class="col-8">
								<label for="floatingTextarea">연락수단 입력란</label>
								<textarea class="form-control" placeholder="연락수단을 입력해 주세요"
									name="contact_detail"></textarea>
							</div>
						</div>
						<div class="mb-3 form-group">
							<div class="col-8">
								<label for="floatingTextarea">상담제목</label>
								<textarea class="form-control"
									placeholder="상담제목을 입력해 주세요 ex) 00과정 00과목 문의" name="title"></textarea>
							</div>
							<label for="exampleFormControlTextarea1" class="form-label">상담내용</label>
							<textarea class="form-control" name="content" rows="3"></textarea>
						</div>

						<hr class="mb-4">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input"
								id="aggrement" required> <label
								class="custom-control-label" for="aggrement">개인정보 수집 및
								이용에 동의합니다.</label>
						</div>
						<div class="mb-4"></div>
						<button class="btn btn-primary btn-lg btn-block" type="submit">상담
							신청</button>
				</form>
			</div>
		</div>
	</div>
</main>
<%@ include file="../include/footer.jsp"%>