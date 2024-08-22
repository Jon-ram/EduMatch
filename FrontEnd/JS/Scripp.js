document.addEventListener('DOMContentLoaded', () => {
    
    const sidebar = document.getElementById('sidebar');
    const content = document.getElementById('content');
    sidebar.classList.add('hidden');
    content.classList.add('sidebar-hidden');
    document.querySelector('.toggle-button').textContent = '☰ Menú';
});

function displayDate() {
    const date = new Date();
    const options = { year: 'numeric', month: 'long', day: 'numeric' };
    document.getElementById('current-date').textContent = date.toLocaleDateString('es-ES', options);
}

function toggleDate() {
    const dateElement = document.getElementById('current-date');
    if (dateElement.classList.contains('hidden')) {
        dateElement.classList.remove('hidden');
    } else {
        dateElement.classList.add('hidden');
    }
}

function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const content = document.getElementById('content');
    if (sidebar.classList.contains('hidden')) {
        sidebar.classList.remove('hidden');
        content.classList.remove('sidebar-hidden');
        document.querySelector('.toggle-button').textContent = '☰ Menú';
    } else {
        sidebar.classList.add('hidden');
        content.classList.add('sidebar-hidden');
        document.querySelector('.toggle-button').textContent = '☰ Menú';
    }
}

function showModal(modalId) {
    document.getElementById(modalId).style.display = 'block';
}

function hideModal(modalId) {
    document.getElementById(modalId).style.display = 'none';
}
