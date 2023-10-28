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
    document.getElementById("inmu").style.display = "block"; //Mostrar elemento
  } else {
    document.getElementById("inmu").style.display = "none"; //Ocultar elemento
  }
}

/* function edit() {
  
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
} */

/* function edit() {
  if ((onclick = true)) {
    const button = document.querySelector("btne");
    
      let element = document.querySelector(".inputfield");

      document.getElementById("campfield").style.pointerEvents = "none";
      
    ;
  }
} */

function edit() {
  const inputFields = document.querySelectorAll(".editable-input");
  const editButton = document.getElementById("btne");

  editButton.addEventListener("click", function () {
    const readOnly = inputFields[0].readOnly; // Tomar el estado del primer campo de entrada
    for (const inputField of inputFields) {
      inputField.readOnly = !readOnly; // Cambiar el estado para todos los campos
    }

    editButton.textContent = readOnly
      ? "Deshabilitar Edición"
      : "Habilitar Edición";
  });
}
