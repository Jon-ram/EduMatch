<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KABJ</title>
    <link rel="stylesheet" href="style_principal.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo-container">
                <img src="imagenes/logo.png" alt="Logo de EduMatch" class="logo">
            </div>
            <ul>
                <li><a href="#inicio">Inicio</a></li>
                <li><a href="#informacion">Información</a></li>
                <li><a href="#quienes-somos">¿Quiénes Somos?</a></li>
                <li><a href="login/index.php">Inicia sesión</a></li>
            </ul>
        </nav>
    </header>
    
    <section id="inicio">
        <h1>Bienvenido a KABJ</h1>
        <p>Tu guía definitiva para elegir la carrera técnica perfecta para ti.</p>
        <p>En KABJ, entendemos que elegir una carrera técnica es una de las decisiones más importantes en tu vida. Por eso, hemos creado una plataforma diseñada para ayudarte a descubrir cuál es la mejor opción para tus intereses, habilidades y aspiraciones.</p>
        <p>¿No estás seguro de qué carrera técnica seguir? No te preocupes. Nuestro sistema de orientación te ofrece herramientas personalizadas y cuestionarios interactivos que te ayudarán a identificar tus fortalezas y preferencias. Con nuestras recomendaciones, podrás explorar diferentes campos y programas educativos que se ajusten a tus metas profesionales.</p>
        <p>Además, KABJ te ofrece acceso a recursos educativos, testimonios de profesionales del sector y guías prácticas para que tomes una decisión informada y segura. ¡Déjanos ayudarte a encontrar el camino hacia una carrera técnica exitosa y satisfactoria!</p>
    </section>
    
    <section id="informacion">
        <h2>Información</h2>
        <p>En KABJ, nuestro objetivo es ayudarte a encontrar la carrera técnica que mejor se adapte a tus intereses y habilidades. Ofrecemos una variedad de recursos y herramientas que te permiten explorar diferentes campos profesionales y evaluar cuál de ellos se alinea con tus pasiones.</p>
        <p>Utilizamos cuestionarios y evaluaciones para identificar tus fortalezas y preferencias, proporcionando recomendaciones personalizadas basadas en tus respuestas. Ya sea que te interesen áreas como la tecnología, la salud, el diseño o la ingeniería, EduMatch te guiará en el proceso de toma de decisiones y te conectará con programas educativos que se ajusten a tus metas.</p>
        
        <h3>Razones para Buscar Ayuda en la Elección de Carrera</h3>
        <p>Elegir una carrera puede ser un desafío significativo, y tu ayuda en este proceso puede ser invaluable. Aquí te explicamos por qué y cómo puedes contribuir:</p>
        
        
        <button id="btn-info">Más Información</button>
    </section>
    
    
    <div id="modal-info" class="modal">
        <div class="modal-content">
            <span class="close" id="close-info">&times;</span>
            <h2>Consideraciones para Elegir una Carrera</h2>
            <p>Elegir una carrera técnica adecuada es fundamental para tu futuro profesional. Aquí te presentamos algunas razones por las que debes considerar cuidadosamente tu elección:</p>
            
            <h3>1. Proyección Profesional</h3>
            <p>Seleccionar una carrera con buena proyección te asegurará oportunidades de crecimiento y estabilidad laboral en el futuro. Investiga las tendencias del mercado y las áreas en expansión.</p>
            
            <h3>2. Compatibilidad con Tus Intereses</h3>
            <p>Es crucial que la carrera que elijas se alinee con tus intereses y pasiones. Esto aumentará tu satisfacción y motivación en el trabajo.</p>
            
            <h3>3. Potencial de Desarrollo Personal</h3>
            <p>Considera cómo una carrera puede ayudarte a desarrollar nuevas habilidades y conocimientos que sean valiosos a largo plazo.</p>
            
            <h3>4. Impacto en tu Estilo de Vida</h3>
            <p>Evalúa cómo la carrera elegida puede afectar tu estilo de vida, incluyendo el equilibrio entre vida laboral y personal, así como las oportunidades de movilidad.</p>
            
            <h3>5. Requisitos y Formación</h3>
            <p>Comprende los requisitos educativos y profesionales necesarios para la carrera de tu elección, y asegúrate de estar preparado para cumplir con ellos.</p>
        </div>
    </div>
    
    <section id="quienes-somos">
        <h2>¿Quiénes Somos?</h2>
        <div class="team-info">
            <p>Somos un equipo de profesionales dedicados a ayudarte en la elección de la carrera técnica adecuada para ti...</p>
            
            <div class="images-container">
                <div class="team-member">
                    <img src="imagenes/descarga.jpg" alt="Jonathan Baldemar Ramirez Reyes" class="team-image" id="jonathan">
                    <p>Jonathan Baldemar Ramirez Reyes</p>
                    <button id="btn-jonathan">Más Información</button>
                </div>
    
                <div id="modal-jonathan" class="modal">
                    <div class="modal-content">
                        <span class="close" id="close-jonathan">&times;</span>
                        <h2>Jonathan Baldemar Ramirez Reyes</h2>
                        <p><strong>Rol:</strong> Backend Developer</p>
                        <p><strong>Descripción:</strong> Jonathan es nuestro experto en desarrollo backend. Se encarga de las conexiones de base de datos y del desarrollo de la lógica del servidor, asegurando que todas las funcionalidades del sitio web funcionen de manera eficiente y segura.</p>
                    </div>
                </div>
    
                <div class="team-member">
                    <img src="imagenes/Premium Vector _ Cute Astronaut Wearing Unicorn Holding Star Cartoon Vector Icon Illustration Science Animal Isolated.jpg" alt="Karen Lizbeth Negrete Hérnandez" class="team-image" id="karen">
                    <p>Karen Lizbeth Negrete Hérnandez</p>
                    <button id="btn-karen">Más Información</button>
                </div>
    
                <div id="modal-karen" class="modal">
                    <div class="modal-content">
                        <span class="close" id="close-karen">&times;</span>
                        <h2>Karen Lizbeth Negrete Hérnandez</h2>
                        <p><strong>Rol:</strong> Líder del Equipo y Documentación</p>
                        <p><strong>Descripción:</strong> Karen lidera nuestro equipo y se encarga de la documentación. Su rol es asegurar que todos los procesos y procedimientos estén bien documentados y que el equipo esté alineado con los objetivos del proyecto.</p>
                    </div>
                </div>
    
                <div class="team-member">
                    <img src="imagenes/Lindo astronauta trabajando en computadora portátil Dibujos animados Vector Icono Ilustración Ciencia Tecnología Icono aislado _ Vector Gratis.jpg" alt="Jose Agustin Jiminez Castillo" class="team-image" id="agustin">
                    <p>Jose Agustin Jiminez Castillo</p>
                    <button id="btn-agustin">Más Información</button>
                </div>
    
                <div id="modal-agustin" class="modal">
                    <div class="modal-content">
                        <span class="close" id="close-agustin">&times;</span>
                        <h2>Jose Agustin Jiminez Castillo</h2>
                        <p><strong>Rol:</strong> Especialista en Bases de Datos</p>
                        <p><strong>Descripción:</strong> Agustín se especializa en el diseño, implementación y mantenimiento de bases de datos. Asegura que la información se almacene de manera segura y esté disponible para el equipo y los usuarios cuando sea necesario.</p>
                    </div>
                </div>
    
                <div class="team-member">
                    <img src="imagenes/Ilustración de icono de vector de dibujos animados de estrella de captura de astronauta lindo_ Icono de ciencia tecnología aislado plano _ Vector Gratis.jpg" alt="Brian Jesus Mendoza Marquez" class="team-image" id="brian">
                    <p>Brian Jesus Mendoza Marquez</p>
                    <button id="btn-brian">Más Información</button>
                </div>
    
                <div id="modal-brian" class="modal">
                    <div class="modal-content">
                        <span class="close" id="close-brian">&times;</span>
                        <h2>Brian Jesus Mendoza Marquez</h2>
                        <p><strong>Rol:</strong> Frontend Developer</p>
                        <p><strong>Descripción:</strong> Brian se encarga del desarrollo frontend, trabajando en la parte visual y la experiencia del usuario del sitio web. Se asegura de que la interfaz sea atractiva, funcional y fácil de usar.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <footer>
        <p>&copy; 2024 KABJ</p>
        <p>Dirección: 20 Calle del Rosario</p>
        <p>Email: contacto@KABJ.com</p>
        <div class="social-media">
            <a href="https://facebook.com/edumatch" target="_blank" rel="noopener noreferrer">Facebook</a> |
            <a href="https://twitter.com/edumatch" target="_blank" rel="noopener noreferrer">Twitter</a> |
            <a href="https://instagram.com/edumatch" target="_blank" rel="noopener noreferrer">Instagram</a>
        </div>
    </footer>
    
    <script>
        document.addEventListener("DOMContentLoaded", function() {
    
    const modals = {
        jonathan: document.getElementById("modal-jonathan"),
        karen: document.getElementById("modal-karen"),
        agustin: document.getElementById("modal-agustin"),
        brian: document.getElementById("modal-brian"),
        info: document.getElementById("modal-info") 
    };

    
    const buttons = {
        jonathan: document.getElementById("btn-jonathan"),
        karen: document.getElementById("btn-karen"),
        agustin: document.getElementById("btn-agustin"),
        brian: document.getElementById("btn-brian"),
        info: document.getElementById("btn-info") 
    };


    const closeButtons = {
        jonathan: document.getElementById("close-jonathan"),
        karen: document.getElementById("close-karen"),
        agustin: document.getElementById("close-agustin"),
        brian: document.getElementById("close-brian"),
        info: document.getElementById("close-info") 
    };

    function showModal(id) {
        modals[id].style.display = "block";
    }

    function hideModal(id) {
        modals[id].style.display = "none";
    }


    buttons.jonathan.onclick = function() { showModal('jonathan'); };
    buttons.karen.onclick = function() { showModal('karen'); };
    buttons.agustin.onclick = function() { showModal('agustin'); };
    buttons.brian.onclick = function() { showModal('brian'); };
    buttons.info.onclick = function() { showModal('info'); };

    
    closeButtons.jonathan.onclick = function() { hideModal('jonathan'); };
    closeButtons.karen.onclick = function() { hideModal('karen'); };
    closeButtons.agustin.onclick = function() { hideModal('agustin'); };
    closeButtons.brian.onclick = function() { hideModal('brian'); };
    closeButtons.info.onclick = function() { hideModal('info'); }; 

    
    window.onclick = function(event) {
        for (const id in modals) {
            if (event.target === modals[id]) {
                hideModal(id);
            }
        }
    };
});

    </script>
</body>
</html>