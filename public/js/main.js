var swiper = new Swiper(".mySwiper", {
    spaceBetween: 30,
    centeredSlides: true,
    autoplay: {
        delay: 2500,
        disableOnInteraction: false,
    },
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
});

document.addEventListener('DOMContentLoaded', () => {
    const profile = document.querySelector('.profile');

    if (profile) {
        profile.addEventListener('click', () => {
            profile.classList.toggle('active');
        });

        // Close dropdown if clicked outside
        document.addEventListener('click', (e) => {
            if (!profile.contains(e.target)) {
                profile.classList.remove('active');
            }
        });
    }
});

const form = document.querySelector("form-unggah");
const selectKategori = document.getElementById("Kategori");
const submitBtn = document.getElementById("submit-btn");

form.addEventListener("submit", function (e) {
    if (selectWaktu.value === "") {
        alert("Silakan pilih waktu terlebih dahulu!");
        e.preventDefault(); 
    }
});

form.addEventListener("submit", function (e) {
    if (selectKategori.value === "") {
        alert("Silakan pilih kategori terlebih dahulu!");
        e.preventDefault(); 
    }
});

const errorMessageElement = document.getElementById('error-message');

const error = errorMessageElement.getAttribute('data-error');

if (message) { 
    alert(message);
} 