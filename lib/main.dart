import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            // Gambar atau ilustrasi
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpzIq7PxmeyalkqXcdG5mC8QRCKChh0aArfw&s', // Ganti dengan URL gambar ilustrasi atau Image.asset untuk lokal
              height: 200,
            ),
            const SizedBox(height: 50),
            // Teks deskripsi
            const Text(
              'KickAvenue Jaya Jaya Jaya!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 90, 41),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            // Tombol Log in
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 0, 90, 41), // Mengganti primary dengan backgroundColor
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Tombol Sign up
            OutlinedButton(
              onPressed: () {
                // Action ketika Sign up ditekan
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                side: const BorderSide(color: Color.fromARGB(255, 0, 90, 41)),
              ),
              child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 90, 41), fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            // Copyright
            const Text(
              'Copyright ©2024 KickAvenue Jaya Jaya Jaya',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KickAvenue'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Halo Sahabat KickAvenue,\nMau Belanja apa hari ini?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Dropdown Pilih Cabang
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 0, 90, 41),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              items: const [
                DropdownMenuItem(
                  value: 'Toko Ngawi',
                  child: Text('Pilih Toko'),
                ),
              ],
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            // Search Field
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari Item',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Dua Tombol: Halo Sneakers dan Halo Apparel
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 90, 41),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Sneakers',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ApparelPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 90, 41),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Apparel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Rekomendasi Sneakers
            const Text(
              'Rekomendasi Sneakers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Grid untuk menampilkan rekomendasi Sneakers
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildItemCard('Air Jordan 1',
                      'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzc0MzIzLzUxOTViY2U5Nzg0MTZkNmQyNGI3ZDVlOThlYzE5YzkwLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ=='),
                  _buildItemCard('New Balance 530',
                      'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzMxNjQ3LzI2NjMwOGY0MTZlZDc1MmFhZTM1YmY0YmUwZGM1NDQ3LnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6MTQwMH19fQ=='),
                  _buildItemCard('Adidas Samba',
                      'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzM3NDMvZGE3MzdhZTYzYTMwMzUxN2VhZWQyMTgyMzBlYjYwMTMucG5nIiwiZWRpdHMiOnsicmVzaXplIjp7IndpZHRoIjoxNDAwfX19'),
                  _buildItemCard('Balenciaga',
                      'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzMzNDA5Lzc5ZDQyMjU0ZWU1ZjY5ZGZhYzVlYWY2MGIwMDEyYzUxLnBuZyIsImVkaXRzIjp7InJlc2l6ZSI6eyJ3aWR0aCI6NDAwfSwid2VicCI6eyJxdWFsaXR5Ijo1MH19fQ=='),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 0, 90, 41),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }

  Widget _buildItemCard(String title, String imageUrl) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(imageUrl, height: 60),
          const SizedBox(height: 8),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

class ApparelApp extends StatelessWidget {
  const ApparelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ApparelPage(),
    );
  }
}

class ApparelPage extends StatelessWidget {
  const ApparelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Apparel',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        elevation: 1,
      ),
      body: SingleChildScrollView(
        // Tambahkan ini agar konten bisa di-scroll
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search field
              TextField(
                decoration: InputDecoration(
                  hintText: 'Kaos',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Info box
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 90, 41),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Image.network(
                      'https://media.giphy.com/avatars/kickavenue/l228F5Huax9I.png', // Ganti dengan URL gambar
                      height: 50,
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Pilih Apparel Andalanmu! Temukan pakaian favoritmu di sini.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Hasil pencarian label
              const Text(
                'Hasil pencarian untuk "Kaos"',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Tab bar untuk "Terkait", "Terbaru", "Terlaris"
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      labelColor: Color.fromARGB(255, 0, 90, 41),
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Color.fromARGB(255, 0, 90, 41),
                      tabs: const [
                        Tab(text: 'Terkait'),
                        Tab(text: 'Terbaru'),
                        Tab(text: 'Terlaris'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Gunakan Flexible untuk menyesuaikan tinggi widget
                    SizedBox(
                      height: 400, // Sesuaikan tinggi ini sesuai kebutuhan
                      child: TabBarView(
                        children: [
                          _buildProductGrid(),
                          _buildProductGrid(),
                          _buildProductGrid(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Promo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 0, 90, 41),
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }

  // Method untuk membuat grid produk
  Widget _buildProductGrid() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(), // Disable scrolling
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.6, // Mengatur ukuran grid card
      ),
      itemCount: 6, // Jumlah produk yang akan ditampilkan
      itemBuilder: (BuildContext context, int index) {
        return _buildProductCard();
      },
    );
  }

  // Method untuk membuat card produk
  Widget _buildProductCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://d5ibtax54de3q.cloudfront.net/eyJidWNrZXQiOiJraWNrYXZlbnVlLWFzc2V0cyIsImtleSI6InByb2R1Y3RzLzEwNjE2NS8wYWNlMzIyNDZiNWVhY2EwOGFlM2Q1NzE3MDBiOTk2NC5wbmciLCJlZGl0cyI6eyJyZXNpemUiOnsid2lkdGgiOjQwMH0sIndlYnAiOnsicXVhbGl0eSI6NTB9fX0=', // Ganti dengan URL gambar produk
              height: 100,
            ),
            const SizedBox(height: 8),
            const Text(
              'Kaos Cotton Oversize',
              style: TextStyle(fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            const Text(
              'Rp. 150.000',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 90, 41),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.star, color: Colors.orange, size: 16),
                Text('4.7 (250)', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
