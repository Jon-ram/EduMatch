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
