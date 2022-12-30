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
								<h1>
									Hello, <span>Welcome Here</span>
								</h1>
							</div>
						</div>
					</div>

				</div>
				<!-- /# row -->
				<div id="main-content">
					<div class="row">
						<div class="col-lg-12">
							<div class="card">
								<a style="width: 150px; margin-bottom: 20px"
									class="btn btn-primary" href="CreateCategory.jsp" role="button">Thêm thể loại</a>
								<table class="table table-hover table-bordered" id="sampleTable">
									<thead>
										<tr>
											<th>ID</th>
											<th>Tên thể loại</th>
											<th>Tính năng</th>
										</tr>
									</thead>
									<tbody>
											<c:forEach items="${listcategory}" var="i">
											<tr>
												<td>${i.id}</td>
												<td>${i.nameCategory}</td>
												<td>
													<a href="delete?id=${i.id }">
														<button class="btn btn-primary btn-sm trash" type="button"
															title="Xóa" onclick="myFunction(this)">
															<i class="fa fa-trash-o" aria-hidden="true"></i>
														</button>
													</a>
												</td>
											</tr>
											</c:forEach>
									</tbody>
								</table>

							</div>
							<!-- /# card -->
						</div>
						<!-- /# column -->
					</div>
					<!-- /# row -->


				</div>
			</div>
		</div>
	</div>


