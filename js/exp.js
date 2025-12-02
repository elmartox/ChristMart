/**
 * 
 * 
 
 */

function abrirModal(tipo) {

    const texto = document.getElementById("modalTexto");
    const boton = document.getElementById("modalBtnIr");

    if (tipo === "3d") {
        texto.innerHTML = `
            Para acceder a la experiencia 3D o de Realidad Aumentada,
            debes registrarte como <strong>Invitado</strong>.
        `;
        boton.href = "registroInvitado.jsp";
    } else {
        texto.innerHTML = `
            Para jugar los minijuegos debes registrarte como
            <strong>Estudiante</strong>.
        `;
        boton.href = "registroEstudiante.jsp";
    }

    let modal = new bootstrap.Modal(document.getElementById('modalAviso'));
    modal.show();
}