
const teacherCards = document.querySelectorAll(".teacher-card")
  teacherCards.forEach((teacherCard)=>{
    teacherCard.addEventListener("click", (event)=>{
      teacherCard.nextElementSibling.classList.toggle("ninja-card")
    })
  })

export { teacherCards };
