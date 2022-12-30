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
								<form action="CreateCategory" method="get">
								
								<p class="text-danger">${faile}</p>
								<p class="text-danger">${successful}</p>
								<table>									
									<tr>
										<td style="text-align: center; font-size: 20px"><b>Thể loại</b></td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="mb-3">
												<label for="exampleInputEmail1" class="form-label">Tên thể loại</label> 
												<input type="text" class="form-control"	id="namecate" name="namecate" aria-describedby="emailHelp">
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<button style="width: 120px" type="submit" class="btn btn-primary">Thêm</button>
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


