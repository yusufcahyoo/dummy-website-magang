<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" defer></script>
  <title>Login Admin</title>
</head>
<body class="flex justify-center items-center min-h-screen bg-black relative">

  <!-- Video Background -->
  <video autoplay muted loop class="absolute top-0 left-0 w-full h-full object-cover z-[-2]">
    <source src="/video/videosmartoffice.mp4" type="video/mp4" />
    Your browser does not support the video tag.
  </video>

  <!-- Dark overlay -->
  <div class="absolute top-0 left-0 w-full h-full bg-black bg-opacity-60 z-[-1]"></div>

  <!-- Login Box -->
  <div id="loginBox" class="bg-white bg-opacity-20 backdrop-blur-lg p-8 rounded-2xl shadow-lg w-full max-w-md transform -translate-y-5 opacity-0 transition-all duration-500 text-white">

    <!-- Logo -->
    <div class="flex justify-center mb-4">
      <img src="{{ asset('/image/logoperpuskita.png') }}" alt="Logo" class="w-32">
    </div>

    <!-- Heading -->
    <h3 class="text-center text-2xl font-semibold mb-4">Admin Login</h3>

    <!-- Flash messages -->
    @if (session('error'))
      <div class="bg-red-600 text-white p-3 rounded mb-4">
        {{ session('error') }}
      </div>
    @endif

    @if (session('success'))
      <div class="bg-green-600 text-white p-3 rounded mb-4">
        {{ session('success') }}
      </div>
    @endif

    <!-- Login Form -->
    <form method="POST" action="{{ route('admin.login') }}">
      @csrf
      <div class="mb-4">
        <label for="email" class="block font-bold">Email</label>
        <input type="email" id="email" name="email" value="{{ old('email') }}"
          class="w-full px-4 py-2 border border-white bg-transparent rounded-lg placeholder-gray-200 text-white focus:ring-2 focus:ring-blue-400 outline-none transition-transform focus:scale-105
          @error('email') border-red-500 @enderror" placeholder="Masukkan email admin">

        @error('email')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <div class="mb-4 relative">
        <label for="password" class="block font-bold">Password</label>
        <div class="relative">
          <input type="password" name="password" id="password"
            class="w-full px-4 py-2 border border-white bg-transparent rounded-lg placeholder-gray-200 text-white focus:ring-2 focus:ring-blue-400 outline-none transition-transform focus:scale-105 pr-10
            @error('password') border-red-500 @enderror" placeholder="Masukkan password">
          <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-300 transition-transform hover:scale-110">
            <i class="fa-solid fa-eye"></i>
          </span>
        </div>

        @error('password')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <div class="flex justify-end mb-4">
        <a href="/forgot-password" class="text-blue-300 text-sm hover:underline hover:opacity-70 transition-opacity">Lupa Password?</a>
      </div>

      <button type="submit" class="w-full bg-red-600 hover:bg-red-500 text-white py-2 rounded-lg font-semibold transition-transform hover:scale-105 active:scale-95">
        Login sebagai Admin
      </button>
    </form>

    <!-- Links -->
    <p class="text-center mt-4 text-gray-300">
      <a href="{{ route('login') }}" class="text-blue-300 hover:underline">Kembali ke Login User</a>
    </p>

    <p class="text-center mt-4 text-gray-300">
      Belum punya akun?
      <a href="{{ route('admin.register.form') }}" class="text-blue-300 hover:underline">Daftar Admin Baru</a>
    </p>
  </div>

  <!-- Script -->
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
