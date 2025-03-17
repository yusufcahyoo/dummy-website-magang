<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Login</title>
</head>
<body class="flex items-center justify-center h-screen bg-gradient-to-r from-green-800 to-green-700">
    <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-md">
        <div class="flex justify-center mb-4">
            <img src="{{ asset('logoperpuskita.png') }}" alt="Logo" class="w-32">
        </div>
        <h3 class="text-center text-lg font-semibold mb-4">Selamat Datang</h3>
        
        <form>
            <div class="mb-4">
                <label for="username" class="block font-bold mb-1">Username</label>
                <input type="text" id="username" placeholder="Masukkan username" 
                    class="w-full px-3 py-2 border rounded-lg focus:ring focus:ring-green-600">
            </div>
            
            <div class="mb-4">
                <label for="password" class="block font-bold mb-1">Password</label>
                <input type="password" id="password" placeholder="Masukkan password" 
                    class="w-full px-3 py-2 border rounded-lg focus:ring focus:ring-green-600">
            </div>
            
            <button type="submit" 
                class="w-full bg-green-700 hover:bg-green-800 text-white py-2 rounded-lg font-semibold">
                Login
            </button>
        </form>
        
<<<<<<< HEAD
        <p class="text-center text-gray-600 mt-4">Belum punya akun? <a href="register" class="text-[#007066] hover:underline">Registrasi</a></p>
=======
        <p class="text-center mt-4">Belum punya akun? 
            <a href="/register" class="text-green-700 hover:underline">Registrasi</a>
        </p>
>>>>>>> a9d4f69 (progress registerrr)
    </div>
</body>
</html>