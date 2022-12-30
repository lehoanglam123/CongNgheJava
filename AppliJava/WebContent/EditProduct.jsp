<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>






<jsp:include page="HomeAdmin.jsp"></jsp:include>

    <div class="content-wrap">
        <div class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 p-r-0 title-margin-right">
                        <div class="page-header">
                            <div class="page-title">
                                <h1>Thêm thể loại</h1>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <!-- /# row -->
				<div id="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<form action="updateproduct" method="post">
								
								<table>									
									<tr>
										<td style="text-align: center; font-size: 20px"><b>Sản phẩm</b></td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label  class="form-label">ID</label> 
												<input type="text" class="form-control" value="${values.id}" readonly id="id" name="id">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label  class="form-label">Tên sản phẩm</label> 
												<input type="text" class="form-control" value="${values.nameProduct}"	id="nameproduct" name="nameproduct">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Thể loại</label> 
												<select name="category">
													<c:forEach items="${listcategory}" var="i">
														<option value="${i.id}">${i.nameCategory }</option>
													</c:forEach>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Hình ảnh</label> 
												<input type="text" value="${values.image}" class="form-control"	id="image" name="image">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Đơn giá</label> 
												<input type="text" value="${values.price}" class="form-control"	id="price" name="price">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Số lượng</label> 
												<input type="text" value="${values.quantity}" class="form-control"	id="quantity" name="quantity">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Tiêu đề</label> 
												<input type="text"value="${values.title}" class="form-control"	id="title" name="title">
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Mô tả</label> 
												<input type="text" value="${values.describe}" class="form-control"	id="description" name="description">
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<button style="width: 120px" type="submit" class="btn btn-primary">Lưu</button>
										</td>
									</tr>
									</table>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
        </div>
    </div>


