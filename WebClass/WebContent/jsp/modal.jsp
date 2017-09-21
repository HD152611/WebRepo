<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="modal"id="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Login result</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p></p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary">Save changes</button>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"
		integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"
		integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1"
		crossorigin="anonymous"></script>

	<script>
		$(document).ready(function() {
			$('#LoginForm').submit(function(event) {
				//ìëì¼ë¡ submitëë ê±¸ ë§ê¸°
				event.preventDefault();

				//id, pwdê° ê°ì ¸ì¤ê¸°
				//document.getElementById("id").value
				var id = $('#id').val();
				var pwd = $('#pwd').val();
				console.log(id, pwd);

				// ìë²ë¡ post ì ì¡(a jax)
				$.post("/WebClass/login", {
					"id" : id,
					"pwd" : pwd
				}, function(data) {
					//alert(data.form.id + "ë ë¡ê·¸ì¸ ëììµëë¤.");
					var myModal = $('#myModal');
					myModal.modal();
					myModal.find('.modal-body').text(data.id + "님 로그인 되었습니다.");
				});
			});
		});

		//ê°ë¨íê² ì°ê¸°
		$(function() {

		});
		</script>