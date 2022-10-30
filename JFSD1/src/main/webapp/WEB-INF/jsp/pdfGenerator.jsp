<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

	<!-- html2pdf CDN-->
	<script src=
"https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js">
	</script>

	<style>
		.container {
			position: fixed;
			top: 20%;
			left: 28%;
			margin-top: -65px;
			margin-left: -100px;
			border-radius: 7px;
		}

		.card {
			box-sizing: content-box;
			width: 700px;
			height: 150px;
			padding: 30px;
			border: 1px solid black;
			font-style: sans-serif;
			background-color: #f0f0f0;
		}

		#button {
			background-color: #4caf50;
			border-radius: 5px;
			margin-left: 650px;
			margin-bottom: 5px;
			color: white;
		}

		h2 {
			text-align: center;
			color: #24650b;
		}
	</style>
</head>

<body>
	<div class="container">
		<button id="button">Generate PDF</button>
		<div class="card" id="makepdf">
			<h2>Welcome to GeeksforGeeks</h2>
			<ul>
				<li>
					<h4>
						We are going to generate a pdf
						from the area inside the box
					</h4>
				</li>
				<li>
					<h4>
						This is an example of generating
						pdf from HTML during runtime
					</h4>
				</li>
			</ul>
		</div>
	</div>

	<script>
		var button = document.getElementById("button");
		var makepdf = document.getElementById("makepdf");

		button.addEventListener("click", function () {
			html2pdf().from(makepdf).save();
		});
	</script>
</body>

</html>
