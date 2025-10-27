import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                  'https://images.unsplash.com/photo-1501117716987-c8e1ecb2106b',
                  height: 120, width: double.infinity, fit: BoxFit.cover),
            ),
            _tag('10% OFF', Colors.blue.shade100, Colors.blue, 8, 8),
            Positioned(
              top: 8, right: 8,
              child: _tag('⭐ 4.5', Colors.white, Colors.black, 8, 8),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
                Text('AYANA Resort', style: TextStyle(fontWeight: FontWeight.bold)),
                Icon(Icons.favorite_border, color: Colors.blue)
              ]),
              const SizedBox(height: 4),
              const Row(children: [
                Icon(Icons.location_on, size: 16, color: Colors.grey),
                SizedBox(width: 4),
                Text('Bali, Indonesia', style: TextStyle(color: Colors.grey)),
              ]),
              const SizedBox(height: 6),
              const Text('\$200 - \$500 USD /night',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
            ]),
          )
        ],
      ),
    );
  }

  Widget _tag(String text, Color bg, Color fg, double top, double left) =>
      Container(
        margin: EdgeInsets.only(top: top, left: left),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(12)),
        child: Text(text, style: TextStyle(color: fg, fontSize: 12, fontWeight: FontWeight.bold)),
      );
}
