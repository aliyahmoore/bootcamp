document.addEventListener("DOMContentLoaded", function() {
    const emailElement = document.querySelector("footer p:first-child");
    emailElement.addEventListener("click", function() {
        alert("Contact me at aliyahm.moore@yahoo.com");
    });
});