document.addEventListener("DOMContentLoaded", () => {
    const juego = document.getElementById("juego");
    const mensaje = document.getElementById("mensaje");
    const scoreElement = document.getElementById("score");

    // TAMAÑO EXACTO DE TUS PERSONAJES (ajústalos si cambias el CSS)
    const TAM = 90; 

    // Personajes con posición inicial en píxeles (dentro del 256×516)
    const personajes = [
        { id: "p1", img: "p1.jpg",   nombre: "Ángel",      x: 128, y: 200, vx: 1.9, vy: 1.3, found: false },
        { id: "p2", img: "p2.jpg",   nombre: "Estrella",   x: 180, y: 350, vx: -2.2, vy: -1.6, found: false },
        { id: "p3", img: "p3.jpg",   nombre: "Rey Mago",   x: 100, y: 400, vx: -1.7, vy: 1.9, found: false }
    ];

    let encontrados = 0;
    let puntos = 0;

    // Cargar imágenes y centrarlas correctamente
    personajes.forEach(p => {
        const el = document.getElementById(p.id);
        el.style.backgroundImage = `url('imgs/${p.img}')`;
        el.style.width = el.style.height = TAM + "px";
        el.style.backgroundSize = "contain";
        el.style.backgroundRepeat = "no-repeat";
        el.style.backgroundPosition = "center";
        el.style.position = "absolute";
        el.style.pointerEvents = "auto";
        el.style.cursor = "pointer";
        el.style.transition = "all 0.4s ease";
        el.style.zIndex = "10";
    });

    // Bucle de movimiento ULTRA PRECISO
    function mover() {
        personajes.forEach(p => {
            if (p.found) return;

            p.x += p.vx;
            p.y += p.vy;

            // Límites exactos para que el centro nunca salga del contenedor
            const minX = TAM / 2;           
            const maxX = 900 - TAM / 2;     
            const minY = TAM / 2;           
            const maxY = 500 - TAM / 2;     

            if (p.x <= minX || p.x >= maxX) {
                p.vx *= -1;
                p.x = p.x <= minX ? minX : maxX;
            }
            if (p.y <= minY || p.y >= maxY) {
                p.vy *= -1;
                p.y = p.y <= minY ? minY : maxY;
            }

            // Aplicar posición (el translate(-50%,-50%) ahora está seguro)
            const el = document.getElementById(p.id);
            el.style.left = p.x + "px";
            el.style.top = p.y + "px";
        });

        requestAnimationFrame(mover);
    }

    // Al hacer clic
    function atrapar(i) {
        const p = personajes[i];
        if (p.found) return;

        p.found = true;
        encontrados++;
        
        // Sumamos 100 puntos por cada personaje atrapado
        puntos += 100;

        const el = document.getElementById(p.id);
        el.classList.add("encontrado");
        el.style.pointerEvents = "none";

        // Acelerar a los demás
        personajes.forEach(otro => {
            if (!otro.found) {
                otro.vx *= 3;
                otro.vy *= 3;
            }
        });

        scoreElement.textContent = puntos;
        mensaje.innerHTML = `¡${p.nombre} atrapado! <br><strong>${encontrados}/3</strong>`;

        if (encontrados === 3) {
            setTimeout(() => {
                mensaje.innerHTML = `¡FELICIDADES! ${puntos} puntos`;
            }, 600);
        }
    }

    // Eventos
    document.getElementById("p1").onclick = () => atrapar(0);
    document.getElementById("p2").onclick = () => atrapar(1);
    document.getElementById("p3").onclick = () => atrapar(2);

    // ¡ARRANCAR!
    mover();
});
