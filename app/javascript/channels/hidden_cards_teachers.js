const initTeacherCards = () => {
  const teacherCards = document.querySelectorAll(".teacher-card")
  if (teacherCards) {
    teacherCards.forEach((teacherCard)=>{
      teacherCard.addEventListener("click", (event)=>{
        teacherCard.nextElementSibling.classList.toggle("ninja-card")
      })
    })
  }
}

export { initTeacherCards };
