<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/js/all.min.js" defer></script>
  <title>Daftar Admin</title>
</head>
<body class="flex justify-center items-center min-h-screen bg-black relative">

  <!-- Video Background -->
  <video autoplay muted loop class="absolute top-0 left-0 w-full h-full object-cover z-[-2]">
    <source src="/video/videosmartoffice.mp4" type="video/mp4" />
    Your browser does not support the video tag.
  </video>

  <!-- Dark overlay -->
  <div class="absolute top-0 left-0 w-full h-full bg-black bg-opacity-60 z-[-1]"></div>

  <!-- Register Box -->
  <div id="registerBox" class="bg-white bg-opacity-20 backdrop-blur-lg p-8 rounded-2xl shadow-lg w-full max-w-md transform -translate-y-5 opacity-0 transition-all duration-500 text-white">

    <!-- Logo -->
    <div class="flex justify-center mb-4">
      <img src="{{ asset('/image/logoperpuskita.png') }}" alt="Logo" class="w-32">
    </div>

    <!-- Heading -->
    <h3 class="text-center text-2xl font-semibold mb-4">Daftar Admin</h3>

    <!-- Flash Message -->
    @if (session('error'))
      <div class="bg-red-600 text-white p-3 rounded mb-4">
        {{ session('error') }}
      </div>
    @endif

    <!-- Register Form -->
    <form method="POST" action="{{ route('admin.register') }}">
      @csrf

      <div class="mb-4">
        <label for="name" class="block font-bold">Nama</label>
        <input type="text" id="name" name="name" value="{{ old('name') }}"
          class="w-full px-4 py-2 border border-white bg-transparent rounded-lg placeholder-gray-200 text-white focus:ring-2 focus:ring-blue-400 outline-none transition-transform focus:scale-105
          @error('name') border-red-500 @enderror" placeholder="Nama lengkap" required>
        @error('name')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <div class="mb-4">
        <label for="email" class="block font-bold">Email</label>
        <input type="email" id="email" name="email" value="{{ old('email') }}"
          class="w-full px-4 py-2 border border-white bg-transparent rounded-lg placeholder-gray-200 text-white focus:ring-2 focus:ring-blue-400 outline-none transition-transform focus:scale-105
          @error('email') border-red-500 @enderror" placeholder="Email aktif" required>
        @error('email')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <div class="mb-4 relative">
        <label for="password" class="block font-bold">Password</label>
        <div class="relative">
          <input type="password" name="password" id="password"
            class="w-full px-4 py-2 border border-white bg-transparent rounded-lg placeholder-gray-200 text-white focus:ring-2 focus:ring-blue-400 outline-none transition-transform focus:scale-105 pr-10
            @error('password') border-red-500 @enderror" placeholder="Password" required>
          <span id="togglePassword" class="absolute inset-y-0 right-3 flex items-center cursor-pointer text-gray-300 transition-transform hover:scale-110">
            <i class="fa-solid fa-eye"></i>
          </span>
        </div>
        @error('password')
          <p class="text-red-400 text-sm mt-1">{{ $message }}</p>
        @enderror
      </div>

      <button type="submit" class="w-full bg-red-600 hover:bg-red-500 text-white py-2 rounded-lg font-semibold transition-transform hover:scale-105 active:scale-95">
        Daftar Admin
      </button>
    </form>

    <!-- Links -->
    <p class="text-center mt-4 text-gray-300">
      Sudah punya akun?
      <a href="{{ route('admin.login.form') }}" class="text-blue-300 hover:underline">Masuk sebagai Admin</a>
    </p>
  </div>

  <!-- Script -->
  <script>
    document.addEventListener("DOMContentLoaded", () => {
      const box = document.getElementById("registerBox");
      setTimeout(() => {
        box.classList.add("opacity-100", "translate-y-0");
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
  </script>
</body>
</html>
