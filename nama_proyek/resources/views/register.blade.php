<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" defer></script>
    <title>Register</title>
</head>
<body class="bg-gradient-to-r from-teal-700 to-teal-900 flex items-center justify-center min-h-screen">
    <div class="bg-white p-8 rounded-2xl shadow-lg w-full max-w-md opacity-0 animate-fadeIn transform -translate-y-5">
        <div class="flex justify-center mb-4">
            <img src="{{ asset('logoperpuskita.png') }}" alt="Logo" class="w-32">
        </div>
        <h3 class="text-center text-3xl font-semibold mb-6 text-gray-800">Daftar Akun</h3>
        <form>
            <div class="mb-4">
                <label for="username" class="block text-gray-700 font-medium">Username</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-transform focus:scale-105" type="text" name="username" id="username" placeholder="Masukkan username">
            </div>
            <div class="mb-4">
                <label for="email" class="block text-gray-700 font-medium">Email</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-transform focus:scale-105" type="email" name="email" id="email" placeholder="Masukkan email">
            </div>
            <div class="mb-4 relative">
                <label for="password" class="block text-gray-700 font-medium">Password</label>
                <div class="relative">
                    <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-transform focus:scale-105 pr-10" type="password" name="password" id="password" placeholder="Masukkan password">
                    <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-600">
                        <i class="fa-solid fa-eye"></i>
                    </span>
                </div>
            </div>
            <button type="submit" class="w-full bg-teal-700 text-white py-3 rounded-lg hover:bg-teal-800 transition-transform hover:scale-105 active:scale-95 font-semibold text-lg">Daftar</button>
        </form>
        
        <p class="text-center text-gray-600 mt-4">
            Sudah punya akun? <a href="/" class="text-teal-700 hover:underline">Masuk</a>
        </p>
    </div>

    <script>
    document.addEventListener("DOMContentLoaded", () => {
        document.querySelector(".animate-fadeIn").classList.add("opacity-100", "translate-y-0");
    });

    document.getElementById("togglePassword").addEventListener("click", function () {
        const passwordInput = document.getElementById("password");
        const icon = this.querySelector("i");
        if (passwordInput.type === "password") {
            passwordInput.type = "text";
            icon.classList.remove("fa-eye");
            icon.classList.add("fa-eye-slash");
        } else {
            passwordInput.type = "password";
            icon.classList.remove("fa-eye-slash");
            icon.classList.add("fa-eye");
        }
    });

    
    document.querySelector("form").addEventListener("submit", function (event) {
        event.preventDefault(); 

        
        const formBox = document.querySelector(".bg-white");

        
        formBox.classList.add("opacity-0", "-translate-y-5");

        
        setTimeout(() => {
            window.location.href = "/"; 
        }, 500); 
    });
</script>
</body>
</html>