import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  final String? name;
  final String? bio;

  const Portfolio({super.key, this.name, this.bio});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
            
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(13), // Subtle shadow (~0.05 opacity)
                      blurRadius: 15,
                      offset: const Oqqffset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Avatar Image/Icon
                    const CircleAvatar(
                      radius: 45,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Name Display
                    Text(
                      name ?? 'Jane Doe',
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),

                    // Bio Display
                    Text(
                      bio ?? 'Flutter Developer & Designer crafting beautiful mobile experiences.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        height: 1.4,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}