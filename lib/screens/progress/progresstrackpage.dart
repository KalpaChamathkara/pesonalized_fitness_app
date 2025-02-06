import 'package:fl_chart/fl_chart.dart'; // For progress charts
import 'package:flutter/material.dart';

class ProgressTrackingPage extends StatelessWidget {
  const ProgressTrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Tracking"),
        backgroundColor: const Color.fromARGB(255, 144, 142, 235),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "📊 Your Fitness Progress",
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(
                      sideTitles:
                          SideTitles(showTitles: true, reservedSize: 30),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          const style = TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          );
                          switch (value.toInt()) {
                            case 0:
                              return const Text("Week 1", style: style);
                            case 1:
                              return const Text("Week 2", style: style);
                            case 2:
                              return const Text("Week 3", style: style);
                            case 3:
                              return const Text("Week 4", style: style);
                          }
                          return const Text("");
                        },
                        reservedSize: 32,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 2),
                        const FlSpot(1, 2.5),
                        const FlSpot(2, 3.2),
                        const FlSpot(3, 3.8),
                      ],
                      isCurved: true,
                      color: const Color.fromARGB(255, 144, 142, 235),
                      barWidth: 4,
                      dotData: const FlDotData(show: true),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildFeatureCard(
              title: "📅 Weekly Reports",
              description: "Track your weekly fitness improvements.",
              icon: Icons.calendar_today,
            ),
            _buildFeatureCard(
              title: "📈 Monthly Performance",
              description: "Analyze long-term progress with monthly insights.",
              icon: Icons.show_chart,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(15),
        leading: CircleAvatar(
          backgroundColor: const Color.fromARGB(255, 144, 142, 235),
          child: Icon(icon, color: Colors.white),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          description,
          style: const TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ),
    );
  }
}

//charts