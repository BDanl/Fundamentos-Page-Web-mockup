function myFunction(val) {
  if (val === 1) {
    document.getElementById("parq").style.display = "none";
  }
  if (val == 2) {
    document.getElementById("parq").style.display = "block";
  }
}

function myFunction2() {
  if ((onclick = true)) {
    document.getElementById("inmu").style.display = "block";
  } else {
    document.getElementById("inmu").style.display = "none";
  }
}

function edit() {
  
  const inputField = document.getElementById("ti");
  const inputField2 = document.getElementById("nr");
  const inputField3 = document.getElementById("idi");
  const inputField4 = document.getElementById("po");
  const inputField5 = document.getElementById("vdi");

  const editButton = document.getElementById("btne");
  
  // Agregar un controlador de eventos al botón para habilitar/deshabilitar la edición
  editButton.addEventListener("click", function () {
    if (inputField.readOnly) {
      inputField.readOnly = false; // Habilitar la edición
      inputField2.readOnly = false; 
      inputField3.readOnly = false; 
      inputField4.readOnly = false; 
      inputField5.readOnly = false; 

      editButton.textContent = "Deshabilitar Edición";
    } else {
      inputField.readOnly = true; // Deshabilitar la edición
      inputField2.readOnly = true; 
      inputField3.readOnly = true; 
      inputField4.readOnly = true; 
      inputField5.readOnly = true; 
      editButton.textContent = "Habilitar Edición";
    }
  });
}

/* function edit() {
  if ((onclick = true)) {
    const button = document.querySelector("btne");
    
      let element = document.querySelector(".inputfield");

      document.getElementById("campfield").style.pointerEvents = "none";
      
    ;
  }
} */
