
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>

<jsp:include flush="true" page="header.jsp"></jsp:include>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<style>
td {
	paddint-top: 10px;
	text-align: center;
	padding-top: 30px;
	line-height: 100px;
}

.anh {
	width: 50px;
	height: 50px;
}

th {
	text-align: center;
}

.validateTips {
	border: 1px solid transparent;
	padding: 0.3em;
}

#dialog-form {
	display: none;
}
</style>
<!-- content -->
<div class="container">
	<div id="dialog-form" title="Edit Product">
		<p class="validateTips">All form fields are required.</p>

		<form>

			<fieldset>
				<div class="row">
					<div class="col">
						<label>Mã Sản Phẩm<span style="color: red" id="masp"></span></label><input
							type="text" class="form-control" placeholder="Mã SP(*)"
							id="codeProduct" name="masp">
					</div>
					<div class="col">
						<label>Tên Sản Phẩm <span style="color: red" id="tensp"></span></label><input
							type="text" class="form-control" placeholder="Tên Sản Phẩm"
							id="nameProduct" name="tensp">
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col">
						<label>Thương Hiệu</label><input type="text" class="form-control"
							placeholder="Nike" id="brand" name="brand" />
					</div>
					<div class="col">
						<label>Mã Loại Hàng</label> <br /> <input type="text"
							id="mySelected" name="cars" class="custom-select sm" />
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col">
						<label>Số Lượng<span style="color: red" id="sosp"></span></label><input
							type="number" class="form-control" placeholder="" id="amount"
							name="amount">
					</div>
					<div class="col">
						<label>Chất Liệu</label><input type="text" class="form-control"
							placeholder="Coton" id="meterial" name="meterial">
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col">
						<label>Size</label><input type="text" class="form-control"
							placeholder="XXl..." id="size" name="size">
					</div>
					<div class="col">
						<label>Mô tả sản phẩm</label><input type="text"
							class="form-control" placeholder="Mô tả sản phẩm"
							id="description" name="description">
					</div>
				</div>
				<br /> <br />
				<div class="row">
					<div class="col">
						<label>Giá<span style="color: red" id="giasp"></span></label><input
							type="number" class="form-control" placeholder="1000" id="price"
							name="price">
					</div>
					<div class="col">
						<label>Đơn vị tính</label><input type="text" class="form-control"
							placeholder="Sản Phẩm" id="unitCount" name="unitCount">
					</div>
				</div>
				<br />
				<div class="row">
					<div class="col">
						<label>Ảnh<span style="color: red" id="anh"></span></label><input
							type="file" class="form-control-file border" id="fileImage"
							name="fileImage">
					</div>
					<div class="col">
						<label>Kiểu Dáng</label><input type="text"
							class="form-control-file border" id="fashionType"
							name="fashionType">
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<label>Mô tả chi tiết</label>
						<textarea rows="5" type="text" class="form-control"
							placeholder="Mô tả chi tiết....." name="descriptionDetail"></textarea>
					</div>
				</div>
			</fieldset>

		</form>

	</div>
	<div class="well">
		<strong>List of Product</strong>
	</div>
	<table id="dataTableProductList" class="table table-stripped">
		<thead>
			<tr>
				<th>STT</th>
				<th>Ảnh</th>
				<th>Mã Sản Phẩm</th>
				<th>Tên Sản Phẩm</th>
				<th>Nhà Sản Xuất</th>
				<th>Mã Loại Hàng</th>
				<th>Số Lượng</th>
				<th>Kiểu Dáng</th>
				<th>Chất Liệu</th>
				<th>Size</th>
				<th>Mô Tả</th>
				<th>Mô Tả Chi Tiết</th>
				<th>Đơn Vị Tính</th>
				<th>Giá</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listProduct}" var="product" varStatus="itr">
				<tr>
					<td>${offset + itr.index +1 }</td>
					<td><img class="anh"
						src="${pageContext.request.contextPath}/statics/${product.thumbnail}" />
					</td>
					<td>${product.codeProduct}</td>
					<td>${product.nameProduct }</td>
					<td>${product.brand}</td>
					<td>${product.codeTypeProduct}</td>
					<td>${product.amount}</td>
					<td>${product.fashionType}</td>
					<td>${product.meterial}</td>
					<td>${product.size}</td>
					<td>${product.descriptionProduct}</td>
					<td>${product.detailInformation}</td>
					<td>${product.unitCount}</td>
					<td>${product.priceProduct }</td>
					<td>
						<button class="btn btn-info">
							<span class="glyphicon glyphicon-pencil"></span>
						</button>
						<button class="btn btn-danger">
							<span class="glyphicon glyphicon-remove"></span>
						</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<jsp:include flush="true" page="footer.jsp"></jsp:include>