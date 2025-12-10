import 'package:flutter/material.dart';

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends State<WeatherHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        actions: const [
          Icon(Icons.refresh),
          SizedBox(width: 10),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// MAIN WEATHER CARD
            Center(
              child: Card(
                elevation: 4,
                shadowColor: Colors.black26,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 40,
                  ),
                  child: Column(
                    children: const [
                      Text(
                        '72°F',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Icon(
                        Icons.wb_sunny,
                        size: 60,
                        color: Colors.orange,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Sunny',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Today\'s Forecast',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            /// FORECAST ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ForecastCard(
                    time: "10 AM",
                    icon: Icons.wb_sunny,
                    iconColor: Colors.orange,
                    temp: "75°F",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ForecastCard(
                    time: "1 PM",
                    icon: Icons.cloud,
                    iconColor: Colors.grey,
                    temp: "78°F",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ForecastCard(
                    time: "4 PM",
                    icon: Icons.grain,
                    iconColor: Colors.blue,
                    temp: "80°F",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ForecastCard(
                    time: "7 PM",
                    icon: Icons.nights_stay,
                    iconColor: Colors.indigo,
                    temp: "76°F",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// REUSABLE FORECAST CARD WIDGET
class ForecastCard extends StatelessWidget {
  final String time;
  final IconData icon;
  final Color iconColor;
  final String temp;

  const ForecastCard({
    super.key,
    required this.time,
    required this.icon,
    required this.iconColor,
    required this.temp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Column(
          children: [
            Text(time, style: const TextStyle(fontSize: 14)),
            const SizedBox(height: 8),
            Icon(icon, color: iconColor, size: 28),
            const SizedBox(height: 8),
            Text(temp, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
