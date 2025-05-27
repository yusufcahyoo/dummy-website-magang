<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Register</title>

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

  <!-- Register Card -->
  <div id="registerBox" class="bg-black bg-opacity-40 backdrop-blur-lg p-8 rounded-2xl shadow-lg w-full max-w-md transform opacity-0 -translate-y-5 transition-all duration-500">

    <!-- Logo -->
    <div class="flex justify-center mb-6">
      <img src="{{ asset('/image/logoperpuskita.png') }}" alt="Logo" class="w-32">
    </div>

    <!-- Judul -->
    <h3 class="text-center text-2xl font-semibold mb-6">Daftar Akun</h3>

    <!-- Form -->
    <form action="{{ route('register') }}" method="POST">
      @csrf

      <!-- Username -->
      <div class="mb-4">
        <label for="name" class="block font-bold mb-1">Username</label>
        <input type="text" id="name" name="name" required
          class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-transform focus:scale-105 bg-transparent text-white placeholder-gray-300"
          placeholder="Masukkan username">
      </div>

      <!-- Email -->
      <div class="mb-4">
        <label for="email" class="block font-bold mb-1">Email</label>
        <input type="email" id="email" name="email" required
          class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-transform focus:scale-105 bg-transparent text-white placeholder-gray-300"
          placeholder="Masukkan email">
      </div>

      <!-- Password -->
      <div class="mb-4">
        <label for="password" class="block font-bold mb-1">Password</label>
        <div class="relative">
          <input type="password" id="password" name="password" required
            class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-blue-500 outline-none transition-transform focus:scale-105 pr-10 bg-transparent text-white placeholder-gray-300"
            placeholder="Masukkan password">
          <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-300 transition hover:scale-110">
            <i class="fa-solid fa-eye"></i>
          </span>
        </div>
      </div>

      <!-- Tombol Daftar -->
      <button type="submit"
        class="w-full bg-blue-700 text-white py-2 rounded-lg hover:bg-blue-600 transition-transform hover:scale-105 active:scale-95">
        Daftar
      </button>
    </form>

    <!-- Link Masuk -->
    <p class="text-center text-gray-300 mt-6">
      Sudah punya akun? <a href="{{ route('login') }}" class="text-white hover:underline">Masuk</a>
    </p>
  </div>

  <!-- Script -->
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const registerBox = document.getElementById("registerBox");
      setTimeout(() => {
        registerBox.classList.add("opacity-100", "translate-y-0");
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
