listEmail = document.querySelectorAll("li.email-index")
delEmail = document.querySelectorAll(".delete-email")

delEmail.forEach(function(del) {
	del.addEventListener("mouseover", function(e) {
		toDel = e.target.parentElement
	})
})