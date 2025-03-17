<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Login</title>
</head>
<body class="flex justify-center items-center min-h-screen bg-gradient-to-r from-[#005F56] to-[#007066]">
    <div class="bg-white p-8 rounded-2xl shadow-lg w-full max-w-md">
        <div class="flex justify-center mb-4">
            <img src="{{ asset('logoperpuskita.png') }}" alt="Logo" class="w-32">
        </div>
        <h3 class="text-center text-2xl font-semibold text-gray-700 mb-4">Selamat Datang</h3>
        
        <form>
            <div class="mb-4">
                <label for="username" class="block text-gray-700 font-bold">Username</label>
                <input type="text" id="username" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-[#007066] outline-none" placeholder="Masukkan username">
            </div>
            
            <div class="mb-4">
                <label for="password" class="block text-gray-700 font-bold">Password</label>
                <input type="password" id="password" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-[#007066] outline-none" placeholder="Masukkan password">
            </div>
            
            <button type="submit" class="w-full bg-[#007066] text-white py-2 rounded-lg hover:bg-[#005F56] transition">Login</button>
        </form>
        
        <p class="text-center text-gray-600 mt-4">Belum punya akun? <a href="/register" class="text-[#007066] hover:underline">Registrasi</a></p>
    </div>
</body>
</html>