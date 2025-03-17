<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Register</title>
</head>
<body class="bg-teal-800 flex items-center justify-center min-h-screen">
    <div class="bg-white p-6 rounded-lg shadow-lg w-full max-w-sm">
        <div class="flex justify-center mb-4">
            <img src="{{ asset('logoperpuskita.png') }}" alt="Logo" class="w-32">
        </div>
        <h3 class="text-center text-2xl font-semibold mb-4 text-gray-800">Register</h3>
        <form>
            <div class="mb-4">
                <label for="username" class="block text-gray-700 font-medium">Username</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500" type="text" name="username" id="username" placeholder="Masukkan username">
            </div>
            <div class="mb-4">
                <label for="email" class="block text-gray-700 font-medium">Email</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500" type="email" name="email" id="email" placeholder="Masukkan email">
            </div>
            <div class="mb-4">
                <label for="password" class="block text-gray-700 font-medium">Password</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500" type="password" name="password" id="password" placeholder="Masukkan password">
            </div>
            <button type="submit" class="w-full bg-teal-700 text-white py-2 rounded-lg hover:bg-teal-800 transition duration-300">Daftar</button>
        </form>
        
        <p class="text-center text-gray-600 mt-4">
            Anda sudah mempunyai akun? 
            <a href="/login" class="text-teal-700 hover:underline">Masuk</a>
        </p>
    </div>
</body>
</html>
