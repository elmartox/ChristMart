/**
 * 
 * 
 * 
 */

document.addEventListener('DOMContentLoaded', function() {
    // 1. Obtener elementos del DOM
    const modal = document.getElementById('registroModal');
    const adminSection = document.getElementById('adminPasswordSection');
    const openModalBtn = document.getElementById('openModal');
    const closeModalBtn = document.getElementById('closeModal');
    const adminOption = document.getElementById('adminOption');
    const adminPassInput = document.getElementById('adminPass');
    const errorAdminMsg = document.getElementById('errorAdmin');
    const btnVerificarAdmin = document.getElementById('btnVerificarAdmin');
    const opcionesRegistro = document.querySelectorAll('.opcion-registro:not(.admin-opcion)');
    
    // Contraseña secreta del Administrador
    const ADMIN_PASSWORD = '4dminUPS';
    const ADMIN_REGISTER_PAGE = 'registroAdministrador.jsp';

	
	// Agrega esto a tu JavaScript dentro del DOMContentLoaded listener:

	const menuToggle = document.getElementById('menuToggle'); // ID del botón 'Menu'
	const navLinks = document.getElementById('navLinks');     // ID del contenedor de enlaces

	if (menuToggle && navLinks) {
	    menuToggle.addEventListener('click', function() {
	        navLinks.classList.toggle('active');
	    });
	}
    // 2. Funciones de Lógica

    // Función para abrir el modal
    function openModal(e) {
        e.preventDefault();
        modal.classList.add('active');
    }

    // Función para cerrar el modal y limpiar campos
    function closeModal() {
        modal.classList.remove('active');
        adminSection.style.display = 'none';
        errorAdminMsg.textContent = '';
        adminPassInput.value = '';
        adminPassInput.style.borderColor = '';
    }

    // Función para verificar la contraseña del administrador
    function verificarAdmin() {
        const pass = adminPassInput.value;
        if (pass === ADMIN_PASSWORD) {
            window.location.href = ADMIN_REGISTER_PAGE;
        } else {
            errorAdminMsg.textContent = 'Contraseña incorrecta';
            adminPassInput.style.borderColor = '#e74c3c'; // Resaltar error
        }
    }
    
    // Función para redirigir a las opciones no-admin
    function irA(event) {
        const targetPage = event.currentTarget.getAttribute('data-target');
        if (targetPage) {
            window.location.href = targetPage;
        }
    }


    // 3. Asignación de Event Listeners

    // Abrir modal
    openModalBtn.addEventListener('click', openModal);

    // Cerrar modal
    closeModalBtn.addEventListener('click', closeModal);

    // Cerrar modal al hacer clic fuera
    window.addEventListener('click', function(e) {
        if (e.target === modal) {
            closeModal();
        }
    });

    // Mostrar sección de contraseña al hacer clic en Administrador
    adminOption.addEventListener('click', function() {
        // Cierra la sección si ya está abierta (opcional, pero limpio)
        if (adminSection.style.display === 'block') {
            closeModal();
        } else {
            adminSection.style.display = 'block';
            adminPassInput.focus();
        }
    });
    
    // Botón de verificar (Administrador)
    btnVerificarAdmin.addEventListener('click', verificarAdmin);

    // Enter para verificar (Administrador)
    adminPassInput.addEventListener('keypress', function(e) {
        if (e.key === 'Enter') {
            verificarAdmin();
        }
    });
    
    // Redirigir opciones Estudiante e Invitado
    opcionesRegistro.forEach(opcion => {
        opcion.addEventListener('click', irA);
    });
});