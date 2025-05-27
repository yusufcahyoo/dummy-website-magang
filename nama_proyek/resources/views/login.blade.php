<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login</title>

  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" defer></script>

  <!-- Animasi Fade In -->
  <style>
    .fade-in {
      opacity: 0;
      transform: translateY(10px);
      animation: fadeIn 0.6s ease-out forwards;
    }

    @keyframes fadeIn {
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    /* Animasi untuk tombol dropdown tanpa rotasi */
    .dropdown-btn {
      transition: transform 0.3s ease-in-out;
    }

    .dropdown-btn.open {
      transform: none; /* Hapus rotasi */
    }

    /* Tambahkan efek zoom saat hover di tombol dropdown */
    .dropdown-btn:hover {
      transform: scale(1.1);
    }
  </style>
</head>
<body class="flex justify-center items-center min-h-screen bg-black relative text-white">

  <!-- Background Video -->
  <video autoplay muted loop class="absolute top-0 left-0 w-full h-full object-cover -z-10">
    <source src="/video/videosmartoffice.mp4" type="video/mp4" />
    Your browser does not support the video tag.
  </video>

  <!-- Overlay -->
  <div class="absolute top-0 left-0 w-full h-full bg-black bg-opacity-50 -z-10"></div>

  <div id="loginBox" class="bg-black bg-opacity-40 backdrop-blur-lg p-8 rounded-2xl shadow-lg w-full max-w-md transform opacity-0 -translate-y-5 transition-all duration-500">
    
    <!-- Logo -->
    <div class="flex justify-center mb-6">
      <img src="{{ asset('/image/logoperpuskita.png') }}" alt="Logo" class="w-32">
    </div>

    <!-- Judul -->
    <h3 class="text-center text-2xl font-semibold mb-6">Login</h3>

    <!-- Alert Error -->
    @if (session('error'))
      <div class="bg-red-500 text-white p-3 rounded mb-4">
        {{ session('error') }}
      </div>
    @endif

    <!-- Alert Success -->
    @if (session('success'))
      <div class="bg-green-500 text-white p-3 rounded mb-4">
        {{ session('success') }}
      </div>
    @endif

    <!-- Form Login -->
    <form method="POST" action="{{ route('login') }}">
      @csrf

      <!-- Username -->
      <div class="mb-4">
        <label for="name" class="block font-bold mb-1">Username</label>
        <input type="text" id="name" name="name" value="{{ old('name') }}"
          class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-transform focus:scale-105 bg-transparent text-white placeholder-gray-300 @error('name') border-red-500 @enderror"
          placeholder="Masukkan username">
        @error('name')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <!-- Password -->
      <div class="mb-4">
        <label for="password" class="block font-bold mb-1">Password</label>
        <div class="relative">
          <input type="password" id="password" name="password"
            class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-transform focus:scale-105 pr-10 bg-transparent text-white placeholder-gray-300 @error('password') border-red-500 @enderror"
            placeholder="Masukkan password">
          <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-300 transition hover:scale-110">
            <i class="fa-solid fa-eye"></i>
          </span>
        </div>
        @error('password')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <!-- Lupa Password -->
      <div class="flex justify-end mb-4">
        <a href="/forgot-password" class="text-blue-300 text-sm hover:underline hover:opacity-70">Lupa Password?</a>
      </div>

      <!-- Tombol Login -->
      <button type="submit"
        class="w-full bg-gray-800 text-white py-2 rounded-lg hover:bg-gray-700 transition-transform hover:scale-105 active:scale-95">
        Login
      </button>

      <!-- Tombol Login Admin -->
      <a href="{{ route('admin.login.form') }}"
        class="block text-center mt-4 bg-blue-800 text-white py-2 rounded-lg hover:bg-blue-600 transition-transform hover:scale-105 active:scale-95">
        Login sebagai Admin
      </a>
    </form>

    <!-- Link Registrasi -->
    <p class="text-center text-gray-300 mt-6">
      Belum punya akun? <a href="{{ route('register.form') }}" class="text-white hover:underline">Registrasi</a>
    </p>
  </div>

  <!-- Script -->
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const loginBox = document.getElementById("loginBox");
      setTimeout(() => {
        loginBox.classList.add("opacity-100", "translate-y-0");
      }, 100);

      // Toggle password visibility
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
    });
  </script>
</body>
</html>
