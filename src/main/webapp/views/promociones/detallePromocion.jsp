
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<jsp:include page="/partials/head.jsp"></jsp:include>


<link href="assets/css/guestAttraction.css" rel="stylesheet" />


</head>

<body>

	<jsp:include page="/partials/login-modal.jsp"></jsp:include>
	<jsp:include page="/partials/user-modal.jsp"></jsp:include>
	<jsp:include page="/partials/navbar.jsp"></jsp:include>

	<c:choose>
		<c:when test="${lado=='LADO OSCURO'}">
			<jsp:include page="/partials/sidebarDark.jsp"></jsp:include></c:when>
		<c:otherwise><jsp:include
				page="/partials/sidebarLight.jsp"></jsp:include>
		</c:otherwise>
	</c:choose>


	<div id="main"
		class="px-0  <c:choose><c:when test="${lado=='LADO OSCURO'}">themeOscuro</c:when></c:choose>">


		<div
			class="d-flex flex-column justify-content-center align-items-center px-5 py-33">

			<div class="col-md-4 me-auto">
				<div class="d-flex flex-row mb-3">
					<div class="col-md-3">
						<img class="col-8"
							<c:choose><c:when test="${lado=='LADO OSCURO'}"> src="/LaFuerza-Turismo/assets/img/home/dark-grey.png"</c:when><c:otherwise>src="/LaFuerza-Turismo/assets/img/home/light.png"</c:otherwise></c:choose>>

					</div>
					<div class="col-md-9 align-self-center me-auto">
						<h3>
							<c:out value="${promocion.nombre}"></c:out>
						</h3>

					</div>

				</div>
				<div>
					<p class="text-star">${promocion.descripcion}</p>
				</div>
				<div
					class="d-flex flex-row mb-3 justify-content-around align-items-center mt-5">
					<div
						class="col-md-3 fondoTransparente<c:choose><c:when test="${lado=='LADO OSCURO'}">Dark</c:when></c:choose>  rounded iconos text-center py-3">${promocion.costo}</div>
					<div
						class="col-md-3 fondoTransparente<c:choose><c:when test="${lado=='LADO OSCURO'}">Dark</c:when></c:choose>  rounded iconos text-center py-3">${promocion.tiempoTotal}</div>
				</div>
			</div>


			<div class="my-4">

				<div class="row row-cols-1 row-cols-md-3 g-4 ">

					<c:forEach items="${atracciones}" var="atraccion">
						<!-- 						<div class="col-sm-4"> -->
						<div class="col">
							<div
								class="card h-100 <c:choose><c:when test="${lado=='LADO OSCURO'}"> border-dark</c:when></c:choose> ">
								<img class="card-img-top"
									src="../assets/img/attractions/cards/<c:out value="${atraccion.id_atraccion}"></c:out>.jpeg"
									alt="Card image cap">
								<div
									class="card-body d-flex flex-column <c:choose><c:when test="${lado=='LADO OSCURO'}"> text-white-50 bg-dark</c:when></c:choose>">
									<h5 class="card-title">
										<c:out value="${atraccion.nombre}"></c:out>
									</h5>
									<p class="card-text">"${atraccion.descripcion}"</p>


									<div
										class="d-flex flex-fill align-items-end justify-content-end">

										<a
											href="../attraction?promocionID=${promocion.propuestaID}&lado=${lado}&attractionID=${atraccion.id_atraccion} "
											class="btn btn-secondary rounded" role="button">Info</a>

									</div>


								</div>
							</div>
						</div>
						<!-- 						</div> -->
					</c:forEach>


				</div>



			</div>



		</div>

		<div class="mx-5 pb-4">
			<a
				<c:choose><c:when test="${usuario == null}"> href="guest?lado=${lado} "</c:when><c:otherwise>href="/LaFuerza-Turismo/index2.jsp "										
		</c:otherwise></c:choose>
				class="btn btn-secondary rounded" role="button">Volver</a>


		</div>



	</div>


	<footer>
		<jsp:include page="/partials/footer.jsp"></jsp:include>
	</footer>




</body>
</html>
