const tabMenu = () => {
  const tabs = document.querySelectorAll(".tab-underlined")
  tabs.forEach(element => {
    element.addEventListener(("click"), (event) => {
      document.querySelector(".active").classList.remove("active")
      element.classList.add("active")
      console.log(element.id)
      document.querySelector(".tab-active").classList.remove("tab-active")
      document.getElementById(`${element.id}-infos`).classList.add("tab-active")
    })
  });
}



export {tabMenu}
