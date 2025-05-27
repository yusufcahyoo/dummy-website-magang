<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" defer></script>
    <title>Login</title>
</head>
<body class="flex justify-center items-center min-h-screen bg-gradient-to-r from-[#005F56] to-[#007066]">
    <div id="loginBox" class="bg-white p-8 rounded-2xl shadow-lg w-full max-w-md transform -translate-y-5 opacity-0 transition-all duration-500">
        <div class="flex justify-center mb-4">
            <img src="{{ asset('logoperpuskita.png') }}" alt="Logo" class="w-32">
        </div>
        <h3 class="text-center text-2xl font-semibold text-gray-700 mb-4">Selamat Datang</h3>
        
        <form id="loginForm">
            <div class="mb-4">
                <label for="username" class="block text-gray-700 font-bold">Username</label>
                <input type="text" id="username" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-[#007066] outline-none transition-transform focus:scale-105" placeholder="Masukkan username">
            </div>
            
            <div class="mb-4 relative">
                <label for="password" class="block text-gray-700 font-bold">Password</label>
                <div class="relative">
                    <input type="password" id="password" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-[#007066] outline-none transition-transform focus:scale-105 pr-10" placeholder="Masukkan password">
                    <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-600 transition-transform hover:scale-110">
                        <i class="fa-solid fa-eye"></i>
                    </span>
                </div>
            </div>

            <div class="flex justify-end mb-4">
                <a href="/forgot-password" class="text-[#007066] text-sm hover:underline hover:opacity-70 transition-opacity">Lupa Password?</a>
            </div>
            
            <button type="submit" class="w-full bg-[#007066] text-white py-2 rounded-lg hover:bg-[#005F56] transition-transform hover:scale-105 active:scale-95">
                Login
            </button>
        </form>
        
        <p class="text-center text-gray-600 mt-4">
            Belum punya akun? <a href="/register" class="text-[#007066] hover:underline">Registrasi</a>
        </p>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", () => {
            const loginBox = document.getElementById("loginBox");
            setTimeout(() => {
                loginBox.classList.add("opacity-100", "translate-y-0");
            }, 100);
        });

        document.getElementById("togglePassword").addEventListener("click", function () {
            const passwordInput = document.getElementById("password");
            const icon = this.querySelector("i");

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                icon.classList.replace("fa-eye", "fa-eye-slash");
            } else {
                passwordInput.type = "password";
                icon.classList.replace("fa-eye-slash", "fa-eye");
            }
        });

       
        document.getElementById("loginForm").addEventListener("submit", function (event) {
            event.preventDefault(); 

            const loginBox = document.getElementById("loginBox");
            loginBox.classList.add("opacity-0", "translate-y-5"); 

            setTimeout(() => {
                window.location.href = "/home"; 
            }, 50); 
        });
    </script>
</body>
</html>
