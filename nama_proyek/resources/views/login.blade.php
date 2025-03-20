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

        <!-- Pesan error jika login gagal -->
        @if (session('error'))
            <div class="bg-red-500 text-white p-3 rounded mb-4">
                {{ session('error') }}
            </div>
        @endif

        <!-- Pesan sukses jika berhasil register atau logout -->
        @if (session('success'))
            <div class="bg-green-500 text-white p-3 rounded mb-4">
                {{ session('success') }}
            </div>
        @endif

        <form method="POST" action="{{ route('login') }}">
            @csrf
            <div class="mb-4">
                <label for="name" class="block text-gray-700 font-bold">Username</label>
                <input type="text" id="name" name="name" value="{{ old('name') }}"
                    class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-[#007066] outline-none transition-transform focus:scale-105
                    @error('name') border-red-500 @enderror" placeholder="Masukkan username">

                @error('name')
                    <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>

            <div class="mb-4 relative">
                <label for="password" class="block text-gray-700 font-bold">Password</label>
                <div class="relative">
                    <input type="password" name="password" id="password"
                        class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-[#007066] outline-none transition-transform focus:scale-105 pr-10
                        @error('password') border-red-500 @enderror" placeholder="Masukkan password">
                    <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-600 transition-transform hover:scale-110">
                        <i class="fa-solid fa-eye"></i>
                    </span>
                </div>

                @error('password')
                    <p class="text-red-500 text-sm mt-1">{{ $message }}</p>
                @enderror
            </div>

            <div class="mb-4">
                <label class="flex items-center text-gray-700">
                    <input type="checkbox" name="remember" class="mr-2"> Remember Me
                </label>
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

        // Toggle visibility password
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
    </script>
</body>
</html>
