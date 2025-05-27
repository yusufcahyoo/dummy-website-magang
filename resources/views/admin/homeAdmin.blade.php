<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>PERPUSKITA - Admin</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            tsGreen: "#007A33",
            tsDarkGreen: "#005F27",
            lightGray: "#F8F9FA",
            darkText: "#333333"
          },
          animation: {
            fadeIn: "fadeIn 1s ease-in-out forwards",
            float: "float 5s ease-in-out infinite",
            slideDown: "slideDown 0.3s ease-out forwards"
          },
          keyframes: {
            fadeIn: {
              "0%": { opacity: "0", transform: "translateY(-10px)" },
              "100%": { opacity: "1", transform: "translateY(0)" }
            },
            float: {
              "0%, 100%": { transform: "translateY(0)" },
              "50%": { transform: "translateY(-10px)" }
            },
            slideDown: {
              "0%": { transform: "translateY(-10px)", opacity: 0 },
              "100%": { transform: "translateY(0)", opacity: 1 }
            }
          }
        }
      }
    };
  </script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body class="bg-gradient-to-tr from-green-100 via-white to-teal-100 min-h-screen text-gray-800">

  <nav class="bg-white/70 backdrop-blur-md shadow-md py-4 px-6 flex justify-between items-center">
    <h1 class="text-2xl font-bold text-green-700 flex items-center gap-3">
      <img src="{{ asset('/image/logoperpuskita.png') }}" alt="Logo" class="w-10 h-10 object-contain" />
      PERPUSKITA
    </h1>
    <form action="{{ route('admin.logout') }}" method="POST">
      @csrf
      <button type="submit"
        class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg font-medium shadow">Logout</button>
    </form>
  </nav>


  <!-- Main Content -->
  <main class="px-4 py-8 max-w-7xl mx-auto">
    <section class="bg-white/80 backdrop-blur-md rounded-xl shadow-xl p-8 mb-8 animate-fadeIn">
      <div class="flex flex-col md:flex-row gap-8">
        <div class="flex-1 space-y-6">
          <h2 class="text-3xl md:text-4xl font-bold text-green-800">Selamat Datang, {{ $admin->name }} 👋</h2>
          <p class="text-lg text-gray-600">Sistem Informasi Perpustakaan Digital yang modern dan mudah diakses.</p>

          @php
      $token = request()->cookie('jwt_token') ?? session('jwt_token');
      $slimsUrl = $token ? "http://localhost/SS/slims/admin/sso-admin.php?token=" . urlencode($token) : "#";
      @endphp

          @if($token)
        <a href="{{ $slimsUrl }}"
        class="inline-block bg-green-600 hover:bg-green-700 text-white px-6 py-3 rounded-lg font-semibold transition transform hover:scale-105">
        🚀 Masuk ke SLIMS
        </a>
      @else
        <p class="text-red-500 font-semibold">⚠️ Token tidak tersedia</p>
      @endif
        </div>
        <div class="flex justify-center items-center">
          <img src="https://cdn-icons-png.flaticon.com/512/2232/2232688.png"
            class="w-48 h-48 md:w-64 md:h-64 animate-float" alt="Library Illustration">
        </div>
      </div>
    </section>

    <!-- Statistik Ringkasan -->
    <section class="mb-8">
      <div class="flex flex-wrap gap-4 justify-between mb-6">
        <div class="bg-white p-5 rounded-xl shadow border flex-1 min-w-[160px] text-center">
          <h4 class="text-gray-700 mb-1">📦 Total Peminjaman</h4>
          <p class="text-green-600 font-bold text-xl" id="stat-total">0</p>
        </div>
        <div class="bg-white p-5 rounded-xl shadow border flex-1 min-w-[160px] text-center">
          <h4 class="text-gray-700 mb-1">🆕 Peminjaman Baru</h4>
          <p class="text-blue-600 font-bold text-xl" id="stat-new">0</p>
        </div>
        <div class="bg-white p-5 rounded-xl shadow border flex-1 min-w-[160px] text-center">
          <h4 class="text-gray-700 mb-1">🔁 Dikembalikan</h4>
          <p class="text-purple-600 font-bold text-xl" id="stat-return">0</p>
        </div>
        <div class="bg-white p-5 rounded-xl shadow border flex-1 min-w-[160px] text-center">
          <h4 class="text-gray-700 mb-1">⏳ Diperpanjang</h4>
          <p class="text-yellow-600 font-bold text-xl" id="stat-extend">0</p>
        </div>
        <div class="bg-white p-5 rounded-xl shadow border flex-1 min-w-[160px] text-center">
          <h4 class="text-gray-700 mb-1">⚠️ Terlambat</h4>
          <p class="text-red-600 font-bold text-xl" id="stat-overdue">0</p>
        </div>
      </div>
    </section>

    <!-- Tab Navigasi -->
    <nav class="border-b border-gray-200 mb-6">
      <ul class="flex space-x-6 text-sm font-medium text-gray-600" id="tab-nav">
        <li>
          <button class="tab-button" data-tab="tab-summary"> Ringkasan</button>
        </li>
        <li>
          <button class="tab-button" data-tab="tab-biblio"> Biblio Populer</button>
        </li>
        <li>
          <button class="tab-button" data-tab="tab-member"> Daftar Member</button>
        </li>
      </ul>
    </nav>

    <!-- Konten Tab -->
    <div id="tab-summary" class="tab-content">
      <p class="text-gray-600 italic">Memuat data peminjaman...</p>
    </div>

    <div id="tab-biblio" class="tab-content hidden">
      <ul id="popular-list" class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6"></ul>
    </div>

    <div id="tab-member" class="tab-content hidden">
      <div id="memberList" class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6"></div>
    </div>
  </main>

  <footer class="text-center py-4 text-sm text-gray-600 bg-white/70 backdrop-blur border-t">
    © 2025 PERPUSKITA - SLIMS
  </footer>

  <script>
    const loadedTabs = {};

    document.querySelectorAll('.tab-button').forEach(button => {
      button.addEventListener('click', () => {
        const tab = button.dataset.tab;

        // Sembunyikan semua konten tab
        document.querySelectorAll('.tab-content').forEach(c => c.classList.add('hidden'));

        // Reset semua tombol tab
        document.querySelectorAll('.tab-button').forEach(b => {
          b.classList.remove('text-green-600', 'border-green-600', 'border-b-2', 'pb-2');
        });

        // Tampilkan tab yang aktif dan beri efek hijau
        document.getElementById(tab).classList.remove('hidden');
        button.classList.add('text-green-600', 'border-green-600', 'border-b-2', 'pb-2');

        // Load konten jika belum dimuat
        if (!loadedTabs[tab]) {
          if (tab === 'tab-biblio') loadPopularBooks();
          if (tab === 'tab-member') loadMembers();
          loadedTabs[tab] = true;
        }
      });
    });

    // Aktifkan tab pertama secara default saat halaman dimuat
    document.addEventListener("DOMContentLoaded", () => {
      const firstTab = document.querySelector('.tab-button');
      if (firstTab) firstTab.click();
    });


    function fixImageUrl(path) {
      const baseUrl = 'http://localhost/SS/slims/';
      if (path.includes('createthumb.php')) return baseUrl + path.replace(/^\.\//, '');
      if (path.startsWith('./')) return baseUrl + path.slice(2);
      if (path.startsWith('/')) return baseUrl + path.slice(1);
      return path;
    }

    function loadPopularBooks() {
      $.ajax({
        url: '/api/biblio/popular',
        type: 'POST',
        headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
        success: function (response) {
          const items = response.data || [];
          const maxItems = 25;
          const limitedItems = items.slice(0, maxItems);

          const html = limitedItems.length ? limitedItems.map(item => `
        <li class="bg-white rounded-lg shadow p-4 flex flex-col items-center max-w-xs mx-auto transition-transform">
          <img src="${fixImageUrl(item.image)}" alt="${item.title}" 
            class="w-full h-auto max-h-[320px] object-contain rounded-md mb-4 transform transition-transform duration-300 hover:scale-105" />
          <h4 class="font-semibold text-green-800 text-center">${item.title}</h4>
        </li>`).join('') : '<li class="text-gray-500">Tidak ada data populer.</li>';

          $('#popular-list').html(html);
        },
        error: function () {
          $('#popular-list').html('<li class="text-red-500">Gagal memuat data buku populer.</li>');
        }
      });
    }


    function loadMembers() {
      fetch("http://localhost:8000/api/member")
        .then(response => response.json())
        .then(data => {
          const memberList = document.getElementById("memberList");
          if (data.length > 0) {
            data.forEach(member => {
              const card = document.createElement("div");
              card.innerHTML = `
                <div class="flex flex-col items-center text-center bg-white/90 p-4 rounded-lg shadow border border-gray-200">
                  <img src="https://api.dicebear.com/7.x/initials/svg?seed=${member.name}" alt="Avatar" class="w-16 h-16 rounded-full border shadow mb-2" />
                  <h5 class="font-bold text-green-800">${member.name}</h5>
                  <p class="text-sm text-gray-600">${member.email}</p>
                </div>
              `;
              memberList.appendChild(card);
            });
          } else {
            memberList.innerHTML = `<p class="text-center text-gray-400 col-span-full">Belum ada data member tersedia.</p>`;
          }
        })
        .catch(error => {
          console.error("Gagal mengambil data member:", error);
        });
    }

    $(document).ready(function () {
      // load summary saat awal
      $('.tab-button[data-tab="tab-summary"]').click();

      $.ajax({
        url: '/api/summary',
        type: 'POST',
        headers: { 'X-CSRF-TOKEN': '{{ csrf_token() }}' },
        success: function (response) {
          const summary = response.data?.data || {};
          $('#stat-total').text(summary.total ?? '0');
          $('#stat-new').text(summary.new ?? '0');
          $('#stat-return').text(summary.return ?? '0');
          $('#stat-extend').text(summary.extend ?? '0');
          $('#stat-overdue').text(summary.overdue ?? '0');

          const loans = summary.loans || [];
          if (!loans.length) {
            $('#tab-summary').html('<p class="text-gray-600 italic">📭 Tidak ada data peminjaman.</p>');
            return;
          }

          let tableHTML = `
            <div>
              <div class="flex flex-col sm:flex-row sm:items-center sm:justify-between mb-4 gap-4">
                <h2 class="text-2xl font-semibold text-green-800">Daftar Peminjaman Terbaru</h2>
                <div class="relative w-full sm:w-64">
  <span class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
    <svg class="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" >
      <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-4.35-4.35m0 0A7.5 7.5 0 1 0 6 6a7.5 7.5 0 0 0 10.65 10.65z"/>
    </svg>
  </span>
  <input 
    type="text" 
    id="loanSearch" 
    placeholder="Cari nama/judul..." 
    class="block w-full pl-10 pr-4 py-2 border border-gray-300 rounded-lg shadow-sm text-gray-700 placeholder-gray-400 focus:border-green-500 focus:ring-2 focus:ring-green-300 focus:outline-none transition duration-200"
  />
</div>
              </div>
              <div class="overflow-x-auto rounded-xl shadow border bg-white">
                <table class="min-w-full divide-y divide-gray-200">
                  <thead class="bg-green-600 text-white">
                    <tr>
                      <th class="px-8 py-4 text-left text-sm font-medium">Judul Buku</th>
                      <th class="px-8 py-4 text-left text-sm font-medium">Nama Anggota</th>
                      <th class="px-8 py-4 text-left text-sm font-medium">Tanggal Pinjam</th>
                      <th class="px-8 py-4 text-left text-sm font-medium">Jatuh Tempo</th>
                      <th class="px-8 py-4 text-left text-sm font-medium">Status</th>
                    </tr>
                  </thead>
                  <tbody id="loanTableBody" class="bg-white divide-y divide-gray-100 text-sm">`;

          loans.forEach(loan => {
            const isOverdue = loan.is_overdue || false;
            tableHTML += `
              <tr class="hover:bg-gray-50">
                <td class="px-6 py-4 font-medium text-gray-900">${loan.title ?? '-'}</td>
                <td class="px-6 py-4">${loan.member_name ?? '-'}</td>
                <td class="px-6 py-4">${loan.loan_date ?? '-'}</td>
                <td class="px-6 py-4">${loan.due_date ?? '-'}</td>
                <td class="px-6 py-4">
                  ${isOverdue
                ? '<span class="text-red-600 font-semibold">Terlambat</span>'
                : '<span class="text-green-600 font-semibold">Aktif</span>'}
                </td>
              </tr>`;
          });

          tableHTML += `</tbody></table></div></div>`;
          $('#tab-summary').html(tableHTML);

          $('#loanSearch').on('input', function () {
            const query = $(this).val().toLowerCase();
            $('#loanTableBody tr').each(function () {
              const rowText = $(this).text().toLowerCase();
              $(this).toggle(rowText.includes(query));
            });
          });
        }
      });
    });
  </script>
</body>

</html>