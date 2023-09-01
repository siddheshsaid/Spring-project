document.addEventListener("DOMContentLoaded", function () {
  const languages = {
    english: {
      heading: "Hello, World!"
    },
    spanish: {
      heading: "¡Hola, Mundo!"
    },
    kuwait:{
      heading:"مرحبا بالعالم"
    }
  };

  const headingElement = document.getElementById("heading");
  const languageDropdown = document.getElementById("languageDropdown");

  languageDropdown.addEventListener("change", () => {
    const selectedLanguage = languageDropdown.value;
    updateLanguage(selectedLanguage);
  });

  function updateLanguage(selectedLanguage) {
    headingElement.textContent = languages[selectedLanguage].heading;
  }
});




