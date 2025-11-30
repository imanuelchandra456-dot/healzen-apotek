<?php
include "db.php"; // koneksi database

// Jika pengguna melakukan pencarian manual lewat form
if (isset($_POST['search'])) {
  $kata = trim($_POST['search']);
  if (!empty($kata)) {
    $stmt = $conn->prepare("INSERT INTO pencarian_data (kata_kunci) VALUES (?)");
    $stmt->bind_param("s", $kata);
    $stmt->execute();
  }
}
?>
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Peta & Lokasi Apotek</title>
  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; }

    body {
      background: linear-gradient(180deg, #34B6A2, #4AA0E0);
      font-family: Arial, sans-serif;
      color: #fff;
      min-height: 100vh;
    }

    .navbar {
      background: linear-gradient(90deg, #4AA0E0, #34B6A2);
      display: flex;
      align-items: center;
      padding: 14px 18px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.2);
    }

    .btn-back {
     background: none;
     border: none;
     color: white;
     font-size: 22px;
     margin-right: 12px;
     cursor: pointer;
     transition: transform 0.2s, color 0.3s;
    }
    .btn-back:hover { color: #ffeb3b; transform: scale(1.2); }

    .navbar-title { font-size: 1.2rem; font-weight: bold; }

    .container {
      width: 100%;
      margin: 0 auto;
      padding: 25px 10px;
      text-align: center;
    }

    .search-box {
      display: block;
      width: 80%;
      max-width: 450px;
      margin: 0 auto 25px auto;
      border-radius: 20px;
      border: none;
      padding: 10px 15px;
      font-size: 15px;
      box-shadow: 0 3px 8px rgba(0,0,0,0.25);
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 15px;
      justify-items: center;
      width: 100%;
    }

    .card-apotek {
      background: #fff;
      color: #333;
      border-radius: 15px;
      overflow: hidden;
      width: 100%;
      max-width: 220px;
      text-align: center;
      box-shadow: 0 4px 10px rgba(0,0,0,0.15);
      transition: transform 0.3s, box-shadow 0.3s;
      cursor: pointer;
    }
    .card-apotek:hover {
      transform: translateY(-5px);
      box-shadow: 0 6px 15px rgba(0,0,0,0.2);
    }

    .card-apotek img {
      width: 100%;
      height: 120px;
      object-fit: cover;
    }

    .card-apotek h6 {
      font-size: 15px;
      font-weight: 600;
      margin: 10px 5px 5px 5px;
    }

    .card-apotek p {
      font-size: 13px;
      color: #666;
      margin-bottom: 10px;
    }

    @media (max-width: 1100px) { .grid { grid-template-columns: repeat(4, 1fr); } }
    @media (max-width: 900px) { .grid { grid-template-columns: repeat(3, 1fr); } }
    @media (max-width: 700px) { .grid { grid-template-columns: repeat(2, 1fr); } }
    @media (max-width: 480px) { .grid { grid-template-columns: repeat(1, 1fr); } }
  </style>
</head>
<body>

  <div class="navbar">
    <button class="btn-back" onclick="window.history.back();">🡸</button>
    <span class="navbar-title">Peta & Lokasi Apotek</span>
  </div>

  <div class="container">
    <form method="POST" action="peta_lokasi.php">
      <input type="text" name="search" id="searchInput" class="search-box" placeholder="Cari apotek...">
    </form>

    <div class="grid" id="apotekList">
      <?php
      $apotek = [
        ["Apotek Surya", "Jl. Mongonsidi", "surya.jpg", "https://maps.app.goo.gl/NVeb1uJtFdDCoiew5"],
        ["Apotek Utama Farma", "Jl.RE Martadinata No. 161", "utama farma.jpg", "https://maps.app.goo.gl/mTLBaJh6YGyJufNu7"],
        ["Apotek Zam", "Jl. Hang Tuah No. 8-4", "zam.jpg", "https://maps.app.goo.gl/Z82MBduXeVx5CDKC6"],
        ["Apotek Kasih Farma 2", "Jl. RE Martadinata", "kasih farma 2.jpg", "https://maps.app.goo.gl/QN4mwXJbrUg4hZiz8"],
        ["Apotek Betsaida", "Jl. Towua No.79", "betsaida.jpg", "https://maps.app.goo.gl/QFZta3Sz1qoHDJhf9"],
        ["Apotek Davin Farma", "Jl. Emmy Saelan No.57", "davin.jpg", "https://maps.app.goo.gl/2c17abHwCsqqUfof8"],
        ["Apotek Berkah Jaya", "Jl. Tombolotutu", "berkah jaya.jpg", "https://maps.app.goo.gl/3iyuAzpAh8PQnVgB6"],
        ["Apotek Jennica Farma", "Jl.Wolter Monginsidi", "jenica.jpg", "https://maps.app.goo.gl/kBdkBLSPoSAXzGge7"],
        ["Apotek Farmindah 7", "Jl. RE Martadinata", "farmindah.jpg", "https://maps.app.goo.gl/HCTVyT2cG7JbpNeXA"],
        ["Apotek Palu Central Care (PCC)", "Jl. Towua", "pcc.jpg", "https://maps.app.goo.gl/wceGSQotc9JzxnS28"],
        ["Apotek Idham farma", "Jl. Palola", "idham farma.jpg", "https://maps.app.goo.gl/4sfVRxK4MacGyi77A"],
        ["Apotek Farmindah 8", "Jl. Towua No. 140", "farmi indah 8.jpg", "https://maps.app.goo.gl/zgKDHSCJqxQzSz166"],
        ["Apotek Medica Farma", "Jl. Kedondong No.06", "medica farma.jpg", "https://maps.app.goo.gl/zDYXVciUwJH5sjKf7"],
        ["Apotek Nusantara", "Jl. Moh. Hatta No.18", "nusantara.jpg", "https://maps.app.goo.gl/rfaWxyaZfRdGBpvh9?g_st=aw"],
        ["Apotek Al Fatih", "Jl. Gatot Subroto No.25", "al fatih.jpg", "https://maps.app.goo.gl/GwvaUqmJSAexGoUAA"],
        ["Apotek Bunda Farma", "Jl. Wr Supratman No.48", "bunda farma.jpg", "https://maps.app.goo.gl/V6whBg2NrpsSSov69"],
        ["Apotek Sehat Abadi Farma", "Jl. Tanjung Pangimpuan No.07", "sehat abadi.jpg", "https://maps.app.goo.gl/gKtpcjJ81ABxu7s48"],
        ["Apotek Linda Farma", "Jl. Wr Supratman No.54", "linda farma.jpg", "https://maps.app.goo.gl/yCtq8V1iKb6tUkZx7"],
        ["Apotek Palu Sehat", "Jl Tanjung Manimbaya No.177", "palu sehat.jpg", "https://maps.app.goo.gl/1eyvatMQzWy64Uqu9"],
        ["Apotek Mitra Abadi", "Jl. Suprapto No.28", "abadi.jpg", "https://maps.app.goo.gl/BcThkNxSa7nqajcu8"],
        ["Apotek Farsya Farma", "Jl. Karanja Lembah No. 83", "farsya.jpg", "https://maps.app.goo.gl/bvMcHf8MUXEV6d5m7"],
        ["Apotek Tirta Medical Pratama", "Jl. Karanja Lembah No. 111", "tirta.jpg", "https://maps.app.goo.gl/hZJR6fKQvyRJNwC28"],
        ["Apotek Inna Farma", "Jl. Emmy Saelan No.25", "inna farma.jpg", "https://maps.app.goo.gl/QMxSktSjeJUU4GA9A"],
        ["Apotek Kasih Farma 3", "Jl. Towua No.140", "kasih farma 3.jpg", "https://maps.app.goo.gl/StGqV24zLvaZKYgT8"],
        ["Apotek Cemerlang", "Jl. Mongonsidi No.16", "cemerlang.jpg", "https://maps.app.goo.gl/iiV61PCMfT7KreuQ7"],
        ["Apotek Pelita", "Jl. Mongonsidi No.37", "pelita.jpg", "https://maps.app.goo.gl/TocufqsfJUPQuVWFA"],
        ["Apotek Sehat Berkah", "Jl. Towua No.141", "sehat berkah.jpg", "https://maps.app.goo.gl/hsTNSoPj28d6q3YS8"],
        ["Apotek Pelita Mas", "Jl. Emmy Saelan No.00", "pelita emas.jpg", "https://maps.app.goo.gl/Fo5arRtCAB3hM14j6"],
        ["Apotek Elfata", "Jl. Towua No.76", "elfata.jpg", "https://maps.app.goo.gl/i6uSmXMbkv5PJXuK8"],
        ["Apotek Zoya", "Jl. Tondo", "zoya.jpg", "https://maps.app.goo.gl/EZQVkdskcLdUtDpv9"]
      ];

      foreach ($apotek as $a) {
        echo '
        <div class="card-apotek" data-nama="'.$a[0].'" data-link="'.$a[3].'">
          <img src="'.$a[2].'" alt="'.$a[0].'">
          <h6>'.$a[0].'</h6>
          <p>'.$a[1].'</p>
        </div>';
      }
      ?>
    </div>
  </div>

  <script>
    // Filter apotek
    const searchInput = document.getElementById('searchInput');
    searchInput.addEventListener('keyup', function() {
      const filter = this.value.toLowerCase();
      const cards = document.querySelectorAll('#apotekList .card-apotek');
      cards.forEach(card => {
        const text = card.innerText.toLowerCase();
        card.style.display = text.includes(filter) ? 'block' : 'none';
      });
    });

    // Klik apotek -> simpan ke database -> buka maps
    document.querySelectorAll('.card-apotek').forEach(card => {
      card.addEventListener('click', function() {
        const nama = this.dataset.nama;
        const link = this.dataset.link;

        fetch('simpan_pencarian.php', {
          method: 'POST',
          headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
          body: 'search=' + encodeURIComponent(nama)
        }).then(() => {
          window.open(link, '_blank');
        });
      });
    });
  </script>

</body>
</html>