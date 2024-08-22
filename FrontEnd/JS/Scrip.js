document.getElementById('registrationForm').addEventListener('submit', function(event) {
        event.preventDefault(); 

        const email = document.getElementById('email').value.trim();
        const name = document.getElementById('name').value.trim();
        const age = document.getElementById('age').value.trim();
        const password = document.getElementById('password').value.trim();
        const tel = document.getElementById('tel').value.trim();
        
        let hasError = false;

        
        document.getElementById('emailError').textContent = '';
        document.getElementById('nameError').textContent = '';
        document.getElementById('ageError').textContent = '';
        document.getElementById('passwordError').textContent = '';
        document.getElementById('telError').textContent = '';


        if (name === '') {
            document.getElementById('nameError').textContent = 'El nombre completo es obligatorio.';
            hasError = true;
        }

    
        if (email === '') {
            document.getElementById('emailError').textContent = 'El correo electrónico es obligatorio.';
            hasError = true;
        } else if (!/\S+@\S+\.\S+/.test(email)) {
            document.getElementById('emailError').textContent = 'El correo electrónico no es válido.';
            hasError = true;
        }

        if (age === '') {
            document.getElementById('ageError').textContent = 'La edad es obligatoria.';
            hasError = true;
        }

     
        if (password === '') {
            document.getElementById('passwordError').textContent = 'La contraseña es obligatoria.';
            hasError = true;
        }

   
        if (tel === '') {
            document.getElementById('telError').textContent = 'El teléfono es obligatorio.';
            hasError = true;
        } else if (!/^\d{10}$/.test(tel)) {
            document.getElementById('telError').textContent = 'El teléfono debe tener 10 dígitos.';
            hasError = true;
        }

        if (!hasError) {
            alert('Formulario enviado correctamente.');
        }
    });

  
    const togglePassword = document.getElementById('togglePassword');
    const passwordInput = document.getElementById('password');

    togglePassword.addEventListener('click', function () {
        const type = passwordInput.type === 'password' ? 'text' : 'password';
        passwordInput.type = type;
        this.classList.toggle('fa-eye');
        this.classList.toggle('fa-eye-slash');
    });
 
    
      