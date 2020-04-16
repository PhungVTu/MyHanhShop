<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#pan {
	text-align: center;
	color: blue;
}
label.error {
        display: inline-block;
        color:red;
        width: 200px;
        }
</style>
<div class="container" ng-app="myApp">
	<br>
	<h2 id="pan">Thêm Sản Phẩm</h2>
	<form action="" method="post" enctype="multipart/form-data" id="form" ng-controller="controller">
		<div class="row">
			<div class="col">
				<label>Mã Sản Phẩm</label><span style="color:red">*</span><span style="color:red" id="masp"></span><input type="text" class="form-control"
					placeholder="Mã SP(*)" name="masp">
			</div>
			<div class="col">
				<label>Tên Sản Phẩm</label><span style="color:red">*</span><span style="color:red" id="tensp"></span><input type="text" class="form-control"
					placeholder="Tên Sản Phẩm" name="tensp">
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col">
				<label>Thương Hiệu</label><input type="text" class="form-control"
					placeholder="Nike" name="brand"/>
			</div>
			<div class="col">
				<label>Mã Loại Hàng</label> <br /> <select id="mySelected" name="cars"
					class="custom-select sm">
					<option selected>Optional...</option>
					<c:forEach items="${typeProducts}" var="typeProduct">
						<option value="${typeProduct.codeTypeProduct}"><c:out
								value="${typeProduct.nameTypeProduct}"/></option>
					</c:forEach>
				</select>
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col">
				<label>Số Lượng</label><span style="color:red">*</span><span style="color:red" id="sosp"></span><input type="number" class="form-control"
					placeholder="" name="amount">
			</div>
			<div class="col">
				<label>Chất Liệu</label><input type="text" class="form-control"
					placeholder="Coton" name="meterial">
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col">
				<label>Size</label><input type="text" class="form-control"
					placeholder="XXl..." name="size">
			</div>
			<div class="col">
				<label>Mô tả sản phẩm</label><input type="text" class="form-control"
					placeholder="Mô tả sản phẩm" name="description">
			</div>
		</div>
		<br /> <br />
		<div class="row">
			<div class="col">
				<label>Giá</label><span style="color:red">*</span><span style="color:red" id="giasp"></span><input type="number" class="form-control"
					placeholder="1000" name="price">
			</div>
			<div class="col">
				<label>Đơn vị tính</label><input type="text" class="form-control"
					placeholder="Sản Phẩm" name="unitCount">
			</div>
		</div>
		<br />
		<div class="row">
			<div class="col">
				<label>Ảnh</label><span style="color:red">*</span><span style="color:red" id="anh"></span><input type="file"  class="form-control-file border"
					name="fileImage">
					<p id="test"></p>
			</div>
			<div class="col">
				<label>Mô tả chi tiết</label>
				<textarea rows="5" type="text" class="form-control"
					placeholder="Mô tả chi tiết....." name="descriptionDetail"></textarea>
			</div>
		</div>
		<button id="addPrSubmit"  type="submit" class="btn btn-primary mt-3">Submit</button>
	</form>
		<br/>
</div>


<jsp:include flush="true" page="footer.jsp"></jsp:include>