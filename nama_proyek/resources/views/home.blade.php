<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        tsGreen: "#007A33",
                        tsDarkGreen: "#005F27",
                        darkBg: "#1A1A1A",
                        darkText: "#E5E5E5"
                    },
                    animation: {
                        fadeIn: "fadeIn 1s ease-in-out forwards",
                        bounceSlow: "bounce 3s infinite"
                    },
                    keyframes: {
                        fadeIn: {
                            "0%": { opacity: "0", transform: "translateY(-10px)" },
                            "100%": { opacity: "1", transform: "translateY(0)" }
                        }
                    }
                }
            }
        };
    </script>
</head>
<body class="bg-gradient-to-br from-tsGreen to-tsDarkGreen min-h-screen flex flex-col items-center justify-center text-gray-900 transition-all duration-500 dark:bg-darkBg dark:text-darkText">

    
    <nav class="absolute top-5 right-5">
        <form action="{{ route('logout') }}" method="POST">
            @csrf
            <button type="submit" class="bg-red-500 text-white px-4 py-2 rounded-lg shadow-md hover:bg-red-600 transition-all duration-300">
                Logout
            </button>
        </form>
    </nav>


  
    <header class="w-full py-10 text-center text-white animate-fadeIn">
        <h1 class="text-5xl font-bold drop-shadow-lg">Selamat Datang di SLIMS</h1>
        <p class="mt-2 text-lg text-gray-100">Sistem Informasi Perpustakaan Digital</p>
    </header>

    
    <section class="flex flex-col items-center">
        <img src="https://cdn-icons-png.flaticon.com/512/2232/2232688.png" alt="Library" class="w-40 h-40 animate-bounceSlow">
    </section>

   
    <main class="flex justify-center items-center w-full px-6 mt-6">
        <div class="bg-white p-8 rounded-2xl shadow-xl max-w-lg w-full text-center transform transition-all duration-500 hover:scale-105 hover:shadow-2xl animate-fadeIn dark:bg-gray-900">
            <p class="text-lg font-medium text-gray-700 dark:text-gray-300">Untuk mengakses SLIMS, klik tombol di bawah ini:</p>
            <a href="http://localhost:8089/bulian/"
               class="mt-6 inline-block bg-tsGreen text-white text-lg font-semibold py-3 px-8 rounded-lg shadow-md 
                      hover:bg-tsDarkGreen hover:shadow-xl transition-all duration-300 transform hover:scale-110 active:scale-95">
                Go to SLIMS
            </a>
        </div>
    </main>

    
    <footer class="w-full py-4 mt-10 text-center text-white">
        <p class="text-sm">© 2025 Perpustakaan Digital - SLIMS</p>
    </footer>


    <script>
       
        const toggleDarkMode = document.getElementById("toggleDarkMode");

        document.addEventListener("DOMContentLoaded", () => {
            if (localStorage.getItem("dark-mode") === "enabled") {
                document.body.classList.add("dark");
            }
        });

        toggleDarkMode?.addEventListener("click", () => {
            document.body.classList.toggle("dark");
            if (document.body.classList.contains("dark")) {
                localStorage.setItem("dark-mode", "enabled");
            } else {
                localStorage.setItem("dark-mode", "disabled");
            }
        });
    </script>
</body>
</html>