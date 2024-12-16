const humMenu = document.querySelector('.hum-menu');
const headerKanan = document.querySelector('.header-kanan');

humMenu.addEventListener('click', () => {
  headerKanan.classList.toggle('active');
});

document.addEventListener('click', (event) => {
    if (!humMenu.contains(event.target) && !headerKanan.contains(event.target)) {
      // Hapus class 'active' jika klik di luar elemen
      headerKanan.classList.remove('active');
    }
  });


const humAdmin = document.querySelector('.humm');
const sidebarList = document.querySelector('.sidebar-list');

humAdmin.addEventListener('click', () => {
sidebarList.classList.toggle('active');
});

document.addEventListener('click', (event) => {
    if (!humAdmin.contains(event.target) && !sidebarList.contains(event.target)) {
      // Hapus class 'active' jika klik di luar elemen
      sidebarList.classList.remove('active');
    }
  });


document.querySelectorAll('.input-stat').forEach(stat => {
    const minusButton = stat.querySelector('.minus');
    const plusButton = stat.querySelector('.plus');
    const inputField = stat.querySelector('input');

    minusButton.addEventListener('click', () => {
        inputField.value = Math.max(0, parseInt(inputField.value) - 1); // Tidak kurang dari 0
    });

    plusButton.addEventListener('click', () => {
        inputField.value = parseInt(inputField.value) + 1;
    });
});



