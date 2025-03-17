<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Register</title>
</head>
<body class="bg-teal-800 flex items-center justify-center min-h-screen">
    <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-sm text-center">
        <img src="logo.png" alt="Logo" class="mx-auto w-24 mb-4">  
        <h3 class="text-2xl font-semibold text-gray-800 mb-4">Selamat Datang</h3>
        <form>
            <div class="mb-4 text-left">
                <label for="username" class="block text-gray-700 font-medium">Username</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500" type="text" name="username" id="username" placeholder="Masukkan username">
            </div>
            <div class="mb-4 text-left">
                <label for="email" class="block text-gray-700 font-medium">Email</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500" type="email" name="email" id="email" placeholder="Masukkan email">
            </div>
            <div class="mb-4 text-left">
                <label for="password" class="block text-gray-700 font-medium">Password</label>
                <input class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500" type="password" name="password" id="password" placeholder="Masukkan password">
            </div>
            <button type="submit" class="w-full bg-teal-700 text-white py-2 rounded-lg hover:bg-teal-800 transition duration-300">Login</button>
        </form>
        <p class="mt-4 text-sm text-gray-600">Belum punya akun? <a href="#" class="text-teal-500 font-medium">Registrasi</a></p>
    </div>
</body>
</html>