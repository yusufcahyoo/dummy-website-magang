<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Login</title>
    <style>
        body {
            background: linear-gradient(to right, #005F56, #007066); /* Warna hijau Tiga Serangkai */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            background: white;
            padding: 30px;
            width: 100%;
            max-width: 400px;
        }
        .logo-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 15px;
        }
        .logo {
            max-width: 120px; /* Ukuran logo */
        }
        .btn-custom {
            background-color: #007066; /* Warna utama */
            border: none;
            color: white;
        }
        .btn-custom:hover {
            background-color: #005F56; /* Warna lebih gelap saat hover */
        }
        .text-center a {
            color: #007066;
            text-decoration: none;
        }
        .text-center a:hover {
            text-decoration: underline;
        }
        .form-label {
            text-align: left;
            display: block;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="logo-container">
            <img src="{{ asset('logoperpuskita.png') }}" alt="Logo" class="logo">
        </div>
        <h3 class="text-center mb-3">Selamat Datang</h3>

        <form>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" placeholder="Masukkan email">
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Masukkan password">
            </div>

            <button type="submit" class="btn btn-custom w-100">Login</button>
        </form>

        <p class="text-center mt-3">Belum punya akun? <a href="#">Registrasi</a></p>
    </div>

</body>
</html>
