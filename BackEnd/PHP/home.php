<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página al Estilo Spotify</title>
    <link rel="stylesheet" href="style_contenido.css">
    <style>
      /* Estilos globales */
body {
    font-family: 'Roboto', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #121212;
    color: #e0e0e0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

/* Navbar */
.navbar {
    background-color: #1db4b9;
    color: white;
    padding: 15px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

.navbar .search-form {
    display: flex;
    align-items: center;
}

.navbar .search-form input[type="text"] {
    padding: 10px;
    border: none;
    border-radius: 20px;
    margin-right: 10px;
    width: 250px;
}

.navbar .search-form button {
    background-color: #60ebd8;
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 20px;
    cursor: pointer;
}

.navbar .search-form button:hover {
    background-color: #1aa34a;
}

.date {
    cursor: pointer;
}

/* Sidebar */
.sidebar {
    width: 250px;
    background-color: #1c1c1c;
    padding: 20px;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.3);
    position: fixed;
    height: 100vh;
    overflow-y: auto;
    transition: transform 0.3s ease;
}

.sidebar.hidden {
    transform: translateX(-100%);
}

.sidebar .profile {
    display: flex;
    align-items: center;
    margin-bottom: 30px;
}

.sidebar .profile img {
    width: 90px;
    height: 90px;
    border-radius: 50%;
    margin-right: 15px;
}

.sidebar .profile h2 {
    margin: 0;
    color: #e0e0e0;
    font-size: 18px;
}

.sidebar .profile p {
    margin: 5px 0;
    color: #b3b3b3;
}

.sidebar ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.sidebar ul li {
    margin: 15px 0;
}

.sidebar ul li a {
    text-decoration: none;
    color: #b3b3b3;
    display: block;
    padding: 10px;
    border-radius: 25px;
    transition: background-color 0.3s ease;
}

.sidebar ul li a:hover {
    background-color: #333333;
}

/* Content */
.container {
    display: flex;
    flex: 1;
    margin-top: 80px; /* Ajusta el margen superior para el navbar */
    transition: margin-left 0.3s ease;
}

.content {
    flex: 1;
    padding: 20px;
    margin-left: 280px; /* Ajusta el margen izquierdo para el sidebar */
    transition: margin-left 0.3s ease;
}

.content.sidebar-hidden {
    margin-left: 0;
}

.box {
    background-color: #333333;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

.box h2 {
    margin-top: 0;
    color: #ffffff;
}

.item {
    display: flex;
    align-items: center;
    background-color: #444444;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
    margin-bottom: 20px;
    transition: background-color 0.3s ease;
    position: relative;
}

.item:hover {
    background-color: #555555;
}

.item img {
    width: 120px;
    height: 90px;
    object-fit: cover;
    border-radius: 6px;
    margin-right: 15px;
}

.item .details {
    flex: 1;
}

.item .details h3 {
    margin: 0;
    font-size: 20px;
    color: #ffffff;
}

.item .details p {
    margin: 5px 0;
    color: #b3b3b3;
}

.item .info-button {
    background-color: #1db4b9;
    color: white;
    border: none;
    padding: 8px 15px;
    border-radius: 5px;
    cursor: pointer;
    position: absolute;
    bottom: 10px;
    left: 10px;
    transition: background-color 0.3s ease;
}

.item .info-button:hover {
    background-color: #1aa34a;
}

/* Modal */
.info-modal {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: #222222;
    border: 1px solid #333333;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
    z-index: 2000;
    width: 80%;
    max-width: 600px;
}

.info-modal.show {
    display: block;
}

.info-modal .modal-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid #333333;
    padding-bottom: 10px;
}

.info-modal .modal-header h3 {
    margin: 0;
    color: #ffffff;
}

.info-modal .modal-header .close-button {
    background: none;
    border: none;
    color: #ffffff;
    font-size: 20px;
    cursor: pointer;
}

.info-modal .modal-header .close-button:hover {
    color: #1db954;
}

.info-modal .modal-body {
    margin-top: 10px;
    color: #b3b3b3;
}

/* Botón de alternar el sidebar */
.toggle-button {
    background-color: #1db4b9;
    color: white;
    border: none;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 25px;
    font-size: 16px;
}

.toggle-button:hover {
    background-color: #1aa34a;
}
.video-container {
    display: none;
    margin-top: 20px;
    text-align: center;
}

.video-container iframe {
    width: 100%;
    height: 315px; /* Ajusta el tamaño según sea necesario */
}

.video-container video {
    max-width: 100%;
    height: auto;
}
    </style>
   
</head>
<body>

    

    <div class="navbar">
        <button class="toggle-button" onclick="toggleSidebar()">☰ Menú</button>
        <div class="search-form">
            <input type="text" placeholder="Buscar...">
            <button type="button">Buscar</button>
        </div>
        <div class="date" onclick="toggleDate()">
            <span id="current-date"></span>
        </div>
    </div>

    <div class="container">
        <div class="sidebar" id="sidebar">
            <div class="profile">
                <img src="../Assets/Perfil.jpg" >
                <div>
                    <h2> <?php echo $user->getUser(); ?></h2>
                    <p>Estudiante</p>
                </div>
            </div>
            <h3>Menú</h3>
            <ul>
                <li><a href="#">Perfil</a></li>
                <li><a href="#">Video</a></li>
                <li><a href="includes/logout.php"><span class="glyphicon glyphicon-log-in"></span> Cerrar sesión</a></li>
                <li><a href="#">Ayuda</a></li>
            </ul>
        </div>
        <div class="content" id="content">
            <h1>Contenido Principal</h1>
            <p>Nuestra plataforma te guía en la búsqueda de la carrera que mejor se ajusta a tus necesidades y aspiraciones académicas. Con herramientas de comparación detalladas, perfiles completos de instituciones y filtros personalizados, te ayudamos a identificar opciones que coincidan con tus intereses, ubicación geográfica, y metas profesionales.</p>
            <div class="box">
                <h2>Lo Más Visto</h2>
                <div class="item">
                    <img src="../Assets/Ingeniería en Sistemas Computacionales _ Mujer Ingeniera.jpg" alt="Contenido Más Visto 1">
                    <div class="details">
                        <h3>Sistemas Computacionales:</h3>
                        <p>Son conjuntos de componentes interrelacionados que trabajan juntos para procesar y gestionar información. Generalmente, incluyen hardware (como computadoras, servidores, y dispositivos periféricos) y software (programas y aplicaciones que ejecutan tareas específicas). Estos sistemas permiten realizar una amplia gama de funciones, desde operaciones simples como cálculos matemáticos hasta tareas complejas como la gestión de redes y bases de datos.</p>
                    </div>
                    <button class="info-button" onclick="showModal('modal-sistemas')">Más Información</button>
                </div>
                <div class="item">
                    <img src="../Assets/Free Photo _ Person working html on computer.jpg" alt="Contenido Más Visto 2">
                    <div class="details">
                        <h3>Entornos virtuales:</h3>
                        <p>Son espacios simulados que permiten interactuar con sistemas digitales de manera inmersiva y flexible. Se crean utilizando tecnologías como la realidad virtual (VR), la realidad aumentada (AR), o plataformas de simulación en 3D.</p>
                    </div>
                    <button class="info-button" onclick="showModal('modal-entornos')">Más Información</button>
                </div>
                <div class="item">
                    <img src="../Assets/SAP Teamcenter by Siemens potencia la industria 4_0 y apalanca la competitividad de las empresas.jpg" alt="Contenido Más Visto 3">
                    <div class="details">
                        <h3>Desarrollador de software:</h3>
                        <p>Un desarrollador de software es un profesional encargado de diseñar, crear, probar y mantener programas informáticos y aplicaciones. Su trabajo es esencial para convertir las ideas en productos funcionales y eficientes que cumplan con los requisitos de los usuarios y empresas.</p>
                    </div>
                    <button class="info-button" onclick="showModal('modal-software')">Más Información</button>
                </div>
            </div>
            <div class="box">
                <h2>Recomendaciones</h2>
                <div class="item">
                    <img src="../Assets/Oil and gas, power workers stock photo_ Image of metal - 28500862.jpg" alt="Recomendación 1">
                    <div class="details">
                        <h3>Ingeniero Petrolero:</h3>
                        <p> Es una rama de la ingeniería que se encarga de estudiar y desarrollar mecanismos para descubrir, analizar, transportar, procesar y tratar los hidrocarburos. Los ingenieros petroleros diseñan sistemas eficientes para la extracción de petróleo y gas.</p>
                    </div>
                    <button class="info-button" onclick="showModal('modal-petrolero')">Más Información</button>
                </div>
                <div class="item">
                    <img src="../Assets/Fisioterapia.jpg" alt="Recomendación 2">
                    <div class="details">
                        <h3>Fisioterapia</h3>
                        <p>Es una rama de la medicina que se enfoca en la prevención, diagnóstico, tratamiento y rehabilitación de lesiones y trastornos del sistema musculoesquelético y neuromuscular. Los fisioterapeutas utilizan una variedad de técnicas y enfoques para mejorar la movilidad, reducir el dolor, y restaurar la funcionalidad en pacientes con diversas condiciones físicas.</p>
                    </div>
                    <button class="info-button" onclick="showModal('modal-fisioterapia')">Más Información</button>
                </div>
                <div class="item">
                    <img src="../Assets/SAP Teamcenter by Siemens potencia la industria 4_0 y apalanca la competitividad de las empresas.jpg" alt="Recomendación 3">
                    <div class="details">
                        <h3>Industrial</h3>
                        <p>Es una disciplina de la ingeniería que se enfoca en optimizar y mejorar procesos, sistemas y operaciones en diversas industrias. Su objetivo es aumentar la eficiencia y la productividad en el uso de recursos humanos, materiales y financieros, mediante el diseño, la implementación y la gestión de sistemas complejos.</p>
                    </div>
                    <button class="info-button" onclick="showModal('modal-industrial')">Más Información</button>
                </div>
            </div>
        </div> 
    </div>

    
    <div class="info-modal" id="modal-sistemas">
        <div class="modal-header">
            <h3>Sistemas Computacionales</h3>
            <button class="close-button" onclick="hideModal('modal-sistemas')">×</button>
        </div>
        <div class="modal-body">
            <p>Son conjuntos de componentes interrelacionados que trabajan juntos para procesar y gestionar información. Generalmente, incluyen hardware (como computadoras, servidores, y dispositivos periféricos) y software (programas y aplicaciones que ejecutan tareas específicas). Estos sistemas permiten realizar una amplia gama de funciones, desde operaciones simples como cálculos matemáticos hasta tareas complejas como la gestión de redes y bases de datos.</p>
            <button onclick="toggleVideo('video-sistemas')">Ver video </button>
            <div class="video-container" id="video-sistemas">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/hgitkRjrUuY?si=il1rMKlo71kZHZnn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <div class="info-modal" id="modal-entornos">
        <div class="modal-header">
            <h3>Entornos Virtuales</h3>
            <button class="close-button" onclick="hideModal('modal-entornos')">×</button>
        </div>
        <div class="modal-body">
            <p>Son espacios simulados que permiten interactuar con sistemas digitales de manera inmersiva y flexible. Se crean utilizando tecnologías como la realidad virtual (VR), la realidad aumentada (AR), o plataformas de simulación en 3D.</p>
            <button onclick="toggleVideo('video-entornos')">Ver video </button>
            <div class="video-container" id="video-entornos">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/N2a5Vvua8jU?si=yyTzeuk3lSODZTS1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <div class="info-modal" id="modal-software">
        <div class="modal-header">
            <h3>Desarrollador de Software</h3>
            <button class="close-button" onclick="hideModal('modal-software')">×</button>
        </div>
        <div class="modal-body">
            <p>Un desarrollador de software es un profesional encargado de diseñar, crear, probar y mantener programas informáticos y aplicaciones. Su trabajo es esencial para convertir las ideas en productos funcionales y eficientes que cumplan con los requisitos de los usuarios y empresas.</p>
            <button onclick="toggleVideo('video-software')">Ver video </button>
            <div class="video-container" id="video-software">
            
                <iframe width="560" height="315" src="https://www.youtube.com/embed/vblgQdQAK7Y?si=gCSrqyPMgRQPHCbc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <div class="info-modal" id="modal-petrolero">
        <div class="modal-header">
            <h3>Ingeniero Petrolero</h3>

            <button class="close-button" onclick="hideModal('modal-petrolero')">×</button>
        </div>
        <div class="modal-body">
            <p>Áreas de Estudio y Trabajo
                Exploración y Producción:
                
                Geología y Geofísica: Análisis de formaciones geológicas para identificar reservas de petróleo y gas.
                Perforación: Diseño y supervisión de procesos de perforación para alcanzar reservas subterráneas.
                Producción: Gestión de la extracción del petróleo y gas, optimización de la producción y manejo de los equipos.
                Reservorios:
                
                Ingeniería de Reservorios: Evaluación y gestión de la capacidad de los reservorios para maximizar la producción.
                Modelado de Reservorios: Uso de simulaciones para predecir el comportamiento del reservorio y planificar la extracción.</p>
            <button onclick="toggleVideo('video-petrolero')">Ver Video</button>
            <div class="video-container" id="video-petrolero">
                
                <iframe width="560" height="315" src="https://www.youtube.com/embed/LkK19XaJZu0?si=cjCdzJ9E94R1jJni" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <div class="info-modal" id="modal-fisioterapia">
        <div class="modal-header">
            <h3>Fisioterapia</h3>
            <button class="close-button" onclick="hideModal('modal-fisioterapia')">×</button>
        </div>
        <div class="modal-body">
            <p>Es una rama de la medicina que se enfoca en la prevención, diagnóstico, tratamiento y rehabilitación de lesiones y trastornos del sistema musculoesquelético y neuromuscular. Los fisioterapeutas utilizan una variedad de técnicas y enfoques para mejorar la movilidad, reducir el dolor, y restaurar la funcionalidad en pacientes con diversas condiciones físicas.</p>
            <button onclick="toggleVideo('video-fisioterapia')">Ver Video</button>
            <div class="video-container" id="video-fisioterapia">
                

                <iframe width="560" height="315" src="https://www.youtube.com/embed/wNLL9gAlb-Y?si=v7ztJP99skkfZq6S" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <div class="info-modal" id="modal-industrial">
        <div class="modal-header">
            <h3>Ingeniería Industrial</h3>
            <button class="close-button" onclick="hideModal('modal-industrial')">×</button>
        </div>
        <div class="modal-body">
            <p>Es una disciplina de la ingeniería que se enfoca en optimizar y mejorar procesos, sistemas y operaciones en diversas industrias. Su objetivo es aumentar la eficiencia y la productividad en el uso de recursos humanos, materiales y financieros, mediante el diseño, la implementación y la gestión de sistemas complejos.</p>
            <button onclick="toggleVideo('video-industrial')">Ver Video</button>
            <div class="video-container" id="video-industrial">
                
                <iframe width="560" height="315" src="https://www.youtube.com/embed/HenKqyL78tE?si=X3olXRbhjVe2CUcy" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <script src="Scripp.js"></script>
    <script>
        function toggleVideo(videoId) {
            var videoContainer = document.getElementById(videoId);
            if (videoContainer.style.display === "none" || videoContainer.style.display === "") {
                videoContainer.style.display = "block";
            } else {
                videoContainer.style.display = "none";
            }
        }

        function showModal(modalId) {
            var modal = document.getElementById(modalId);
            modal.style.display = "block";
        }

        function hideModal(modalId) {
            var modal = document.getElementById(modalId);
            modal.style.display = "none";
        }

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

    </script>


</body>
</html>
