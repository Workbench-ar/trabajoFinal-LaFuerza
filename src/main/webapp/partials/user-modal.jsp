<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link href="/assets/css/login-modal.css"
	rel="stylesheet" />
<script defer src="https://kit.fontawesome.com/d3e9765b95.js" crossorigin="anonymous"></script>

<div class="modal fade" id="userModal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content ">
			<div class="modal-header">
				<h5 class="modal-title fs-5" >${usuario.nombre}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">


				<div class="border-end " id="sidebar-wrapper">
					<div class="list-group list-group-flush lead ">
					<c:if test="${!usuario.admin}">
						<a class="list-group-item-light  p-3 text text-dark"						
							href="/usuario/compras.do?=${usuario.usuario_id}"><i class="fas fa-shopping-cart px-3"></i>Mis Compras</a></c:if> 
						
						<a class=" list-group-item-light  p-3 text text-dark"
							href="#!"><i class="fas fa-user px-3"></i>Mi Perfil</a> 
					</div>
					<!-- corregir los href -->
				</div>
				
				

				<div class="modal-footer d-block">
					<!--    <p class="float-start">Not yet account <a href="#">Sign Up</a></p> -->
					<a href="/logout"><button
							class="btn btn-primary float-end">Salir</button></a>
				</div>

			</div>
		</div>
	</div>
</div>