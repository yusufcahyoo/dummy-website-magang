<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Perpustakaan Digital</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet" />
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            primary: '#007A33',
            secondary: '#00B894',
            dark: '#1D1D1D',
            accent: '#F7F7F7',
          },
          fontFamily: {
            sans: ['Inter', 'sans-serif']
          },
        }
      }
    }
  </script>
  <style>
    @keyframes slowBounce {

      0%,
      100% {
        transform: translateY(0);
        animation-timing-function: ease-in-out;
      }

      50% {
        transform: translateY(-15%);
        animation-timing-function: ease-in-out;
      }
    }

    .slow-bounce {
      animation: slowBounce 5s infinite;
    }

    /* Tombol tab scroll horizontal */
    .tabs-wrapper {
      overflow-x: auto;
      -webkit-overflow-scrolling: touch;
    }

    /* scrollbar custom (opsional) */
    .tabs-wrapper::-webkit-scrollbar {
      height: 6px;
    }

    .tabs-wrapper::-webkit-scrollbar-thumb {
      background-color: rgba(0, 122, 51, 0.6);
      border-radius: 3px;
    }

    /* Styling gambar buku portrait dengan efek zoom */
    .book-item img {
      width: 150px;
      height: 220px;
      object-fit: cover;
      border-radius: 0.5rem;
      transition: transform 0.3s ease;
      cursor: pointer;
    }

    .book-item img:hover {
      transform: scale(1.15);
      z-index: 10;
      position: relative;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    }
  </style>
</head>

<body class="bg-gray-50 text-dark font-sans">

  <!-- Header -->
  <header class="bg-white shadow-sm sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-6 py-4 flex flex-wrap items-center justify-between gap-3 md:gap-0">

      <!-- Logo + Title -->
      <div class="flex items-center gap-3">
        <img src="{{ asset('/image/logoperpuskita.png') }}" alt="Logo" class="w-10 h-10 object-contain" />
        <h1 class="text-2xl font-bold text-primary whitespace-nowrap">PERPUSKITA</h1>
      </div>

      <!-- Logout Button -->
      <form action="{{ route('logout') }}" method="POST" class="flex-shrink-0">
        @csrf
        <button
          class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg text-sm transition-all hover:scale-110 w-full md:w-auto">
          Logout
        </button>
      </form>

    </div>
  </header>


  <!-- Hero -->
  <section class="bg-gradient-to-r from-primary to-secondary text-white py-12 md:py-16">
    <div class="max-w-7xl mx-auto px-6 grid md:grid-cols-2 gap-8 md:gap-10 items-center">
      <div class="space-y-6">
        <h2 class="text-3xl md:text-4xl font-bold leading-tight">Selamat Datang, {{ $user->name }} 👋</h2>
        <p class="text-base md:text-lg">Akses koleksi perpustakaan digital modern dan mudah digunakan kapan saja, di
          mana
          saja.</p>
        @php
      $token = request()->cookie('jwt_token') ?? session('jwt_token');
      $slimsUrl = $token ? "http://localhost/SS/slims/sso-login.php?token=" . urlencode($token) : "#";
    @endphp
        @if($token)
      <a href="{{ $slimsUrl }}"
        class="inline-block bg-white text-primary font-semibold px-6 py-3 rounded-lg shadow hover:bg-gray-100 transition-transform transform hover:scale-110">Masuk
        ke SLIMS</a>
    @else
      <p class="text-red-200">Token tidak tersedia</p>
    @endif
      </div>
      <div class="relative flex justify-center md:justify-end">
        <div class="absolute inset-0 bg-white bg-opacity-10 rounded-full blur-3xl"></div>
        <img src="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"
          class="relative w-48 sm:w-56 md:w-64 slow-bounce" alt="Library Icon" />
      </div>
    </div>
  </section>

  <!-- Tabs -->
  <main class="max-w-7xl mx-auto px-6 py-12 md:py-16">
    <div>
      <div class="tabs-wrapper flex space-x-4 border-b mb-8">
        <button
          class="tab-button border-b-2 border-primary text-primary font-semibold py-2 px-4 min-w-[110px] whitespace-nowrap"
          data-target="summary-tab">Ringkasan</button>
        <button class="tab-button text-gray-600 hover:text-primary py-2 px-4 min-w-[110px] whitespace-nowrap"
          data-target="popular-tab">Populer</button>
        <button class="tab-button text-gray-600 hover:text-primary py-2 px-4 min-w-[110px] whitespace-nowrap"
          data-target="all-tab">Semua Koleksi</button>
      </div>

      <!-- Ringkasan -->
      <div id="summary-tab" class="tab-content">
        <div class="bg-white p-4 md:p-6 rounded-xl shadow-md overflow-x-auto">
          <h3 class="text-xl font-semibold mb-4">Ringkasan Peminjaman</h3>
          <div id="summary" class="min-w-[600px]">
            <p class="text-gray-600 italic">Memuat data peminjaman...</p>
          </div>
        </div>
      </div>

      <!-- Populer -->
      <div id="popular-tab" class="tab-content hidden">
        <div class="bg-white p-6 rounded-xl shadow-md">
          <h3 class="text-xl font-semibold mb-4"> Koleksi Populer</h3>
          <ul id="popular-list"
            class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 text-sm text-gray-700 justify-items-center">
          </ul>
        </div>
      </div>

      <!-- Semua Koleksi -->
      <div id="all-tab" class="tab-content hidden">
        <div class="bg-white p-6 rounded-xl shadow-md">
          <h3 class="text-xl font-semibold mb-4"> Semua Koleksi</h3>
          <ul id="allBooks-list"
            class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 text-sm text-gray-700 justify-items-center">
          </ul>
        </div>
      </div>
    </div>
  </main>

  <!-- Footer -->
  <footer class="bg-white border-t text-center py-6 md:py-8 text-sm text-gray-500">
    &copy; {{ date('Y') }} Perpustakaan Digital. All rights reserved.
  </footer>

  <!-- Script -->
  <script>
    const currentUserName = @json($user->name);

    function fixImageUrl(path) {
      const baseUrl = 'http://localhost/SS/slims/';
      if (!path) return '';
      if (path.includes('createthumb.php')) return baseUrl + path.replace(/^\.\//, '');
      if (path.startsWith('./')) return baseUrl + path.slice(2);
      if (path.startsWith('/')) return baseUrl + path.slice(1);
      if (path.startsWith('http')) return path;
      return baseUrl + path;
    }

    $(document).ready(function () {
      $('.tab-button').click(function () {
        const target = $(this).data('target');
        $('.tab-button').removeClass('border-b-2 text-primary font-semibold').addClass('text-gray-600');
        $(this).addClass('border-b-2 border-primary text-primary font-semibold');
        $('.tab-content').addClass('hidden');
        $('#' + target).removeClass('hidden');
      });

      $.ajax({
        url: '/api/summary',
        type: 'POST',
        headers: {
          'X-CSRF-TOKEN': '{{ csrf_token() }}'
        },
        success: function (response) {
          const loans = response.data?.data?.loans || [];
          const filtered = loans.filter(l => l.member_name.trim().toLowerCase() === currentUserName.trim().toLowerCase());

          if (!filtered.length) {
            $('#summary').html('<p class="text-gray-600 italic">📭 Tidak ada data peminjaman.</p>');
          } else {
            let html = `
              <div class="overflow-x-auto">
                <table class="min-w-full table-auto border border-gray-200 rounded-lg overflow-hidden text-sm">
                  <thead>
                    <tr class="bg-gradient-to-r from-green-600 to-green-400 text-white">
                      <th class="px-6 py-3 text-left whitespace-nowrap">Judul Buku</th>
                      <th class="px-6 py-3 text-left whitespace-nowrap">Nama Member</th>
                      <th class="px-6 py-3 text-left whitespace-nowrap">Tanggal Pinjam</th>
                      <th class="px-6 py-3 text-left whitespace-nowrap">Tanggal Tempo</th>
                      <th class="px-6 py-3 text-left whitespace-nowrap">Tanggal Kembali</th>
                    </tr>
                  </thead>
                  <tbody>`;
            filtered.forEach(loan => {
              html += `
                    <tr class="odd:bg-white even:bg-gray-50 border-t border-gray-200">
                      <td class="px-6 py-4 whitespace-nowrap">${loan.title}</td>
                      <td class="px-6 py-4 whitespace-nowrap">${loan.member_name}</td>
                      <td class="px-6 py-4 whitespace-nowrap">${loan.loan_date}</td>
                      <td class="px-6 py-4 whitespace-nowrap">${loan.due_date}</td>
                      <td class="px-6 py-4 whitespace-nowrap">
                        ${loan.return_date
                  ? `<span class="bg-green-100 text-green-800 px-2 py-1 rounded-full text-xs">${loan.return_date}</span>`
                  : `<span class="bg-red-100 text-red-800 px-2 py-1 rounded-full text-xs">Belum Dikembalikan</span>`}
                      </td>
                    </tr>`;
            });
            html += `</tbody></table></div>`;
            $('#summary').html(html);
          }
        },
        error: () => $('#summary').html('<p class="text-red-500">⚠️ Gagal memuat ringkasan.</p>')
      });

      function renderBookList(container, items) {
        if (!items.length) {
          $(container).html('<li class="text-gray-600 italic col-span-full">📭 Tidak ada data tersedia.</li>');
          return;
        }

        const html = items.map(item => `
          <li class="book-item bg-white p-3 sm:p-4 rounded-lg shadow text-center hover:shadow-md transition-all flex flex-col items-center">
            <img src="${fixImageUrl(item.image)}" alt="${item.title}" onerror="this.src='/default-cover.png';" />
            <strong class="block text-sm sm:text-base font-semibold mt-2 max-w-full break-words text-center">${item.title}</strong>
          </li>`).join('');

        $(container).html(html);
      }

      $.post('/api/biblio/popular', {
        _token: '{{ csrf_token() }}'
      }, res => {
        renderBookList('#popular-list', res.data || []);
      }).fail(() => $('#popular-list').html('<li class="text-red-500 col-span-full">⚠️ Gagal memuat data populer.</li>'));

      $.post('/api/biblio/all', {
        _token: '{{ csrf_token() }}'
      }, res => {
        renderBookList('#allBooks-list', res.data || []);
      }).fail(() => $('#allBooks-list').html('<li class="text-red-500 col-span-full">⚠️ Gagal memuat semua koleksi.</li>'));
    });
  </script>

</body>

</html>