// Message d'accueil
function welcome() {
	alert("Hello, j'arrive à 11h pour les corrections ! Sorry. \n - Naïlé")
}
window.onload = welcome


listEmail = document.querySelectorAll("li.email-index")
delEmail = document.querySelectorAll(".delete-email")

delEmail.forEach(function(del) {
	del.addEventListener("click", function(e) {
		toDel = e.target.parentElement
	})
})

showEmail = document.querySelectorAll(".show-email")
showEmail.forEach(function(show) {
	show.addEventListener("click", function(e) {
		elToShow = e.target.parentElement
		isRead = elToShow.firstElementChild
		elToShow.classList.remove("not-read")
	})
})