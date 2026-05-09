import 'package:flutter/material.dart';

void main() {
  runApp(const MorphologyApp());
}

class MorphologyApp extends StatelessWidget {
  const MorphologyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Andrographis paniculata Morphology',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MorphologyScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MorphologyScreen extends StatelessWidget {
  const MorphologyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: const Text(
              'Andrographis paniculata',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
            floating: true,
            pinned: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildIntroSection(),
                const SizedBox(height: 24),
                const Text(
                  'Botanical Morphology',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                LayoutBuilder(
                  builder: (context, constraints) {
                    int crossAxisCount = constraints.maxWidth > 800 ? 2 : 1;
                    return GridView.count(
                      crossAxisCount: crossAxisCount,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: constraints.maxWidth > 800 ? 2.5 : 1.8,
                      children: const [
                        MorphologyCard(
                          title: 'Plant Habit',
                          icon: Icons.grass,
                          description:
                              'An erect, annual, branched herb typically growing 30 to 110 cm in height. It has a taproot system.',
                        ),
                        MorphologyCard(
                          title: 'Stem',
                          icon: Icons.line_weight,
                          description:
                              'Dark green, sharply quadrangular (four-sided) with longitudinal furrows and wings along the angles. The stem is extensively branched.',
                        ),
                        MorphologyCard(
                          title: 'Leaves',
                          icon: Icons.eco,
                          description:
                              'Simple, opposite-decussate, lanceolate, glabrous, 2–8 cm long, and 1–2.5 cm wide. Apex is acute to acuminate with an entire margin.',
                        ),
                        MorphologyCard(
                          title: 'Inflorescence & Flowers',
                          icon: Icons.local_florist,
                          description:
                              'Flowers are small, solitary, arranged in lax spreading axillary and terminal racemes or panicles. The corolla is bilabiate, white with rose-purple spots on the lower lip.',
                        ),
                        MorphologyCard(
                          title: 'Fruits (Capsules)',
                          icon: Icons.spa,
                          description:
                              'The fruit is an erect, linear-oblong capsule, approximately 1.5–2 cm long and 3–4 mm wide, compressed, and acutely pointed at both ends.',
                        ),
                        MorphologyCard(
                          title: 'Seeds',
                          icon: Icons.grain,
                          description:
                              'Seeds are numerous, very small, sub-quadrate, yellowish-brown, and rugose (deeply wrinkled/pitted), lacking endosperm.',
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 32),
                const Text(
                  'Antimicrobial Properties',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildAntimicrobialSection(),
                const SizedBox(height: 32),
                const Divider(),
                const SizedBox(height: 16),
                const Text(
                  'References',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                _buildReferenceItem(
                  '1. World Health Organization (WHO)',
                  'WHO Monographs on Selected Medicinal Plants - Volume 2. "Herba Andrographidis". Geneva: WHO, 2002.',
                ),
                _buildReferenceItem(
                  '2. Sharma, A., et al.',
                  'Botanical and phytopharmacological notes on Andrographis paniculata (Nees). Journal of Pharmacognosy and Phytochemistry, 2014.',
                ),
                _buildReferenceItem(
                  '3. Indian Pharmacopoeia',
                  'Ministry of Health and Family Welfare, Government of India. Monographs on Indian Medicinal Plants.',
                ),
                _buildReferenceItem(
                  '4. Mishra, U. S., et al.',
                  'Antibacterial and antifungal activity of Andrographis paniculata (Nees) in vitro. Journal of Pharmacognosy and Phytotherapy, 2013.',
                ),
                const SizedBox(height: 48),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAntimicrobialSection() {
    return const Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.health_and_safety, color: Colors.blue, size: 28),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Antimicrobial Activity',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'Andrographis paniculata exhibits significant antimicrobial activity due to its active phytochemicals, predominantly andrographolide and its derivatives. Extracts from the leaves and aerial parts have shown broad-spectrum antibacterial efficacy against both Gram-positive (e.g., Staphylococcus aureus) and Gram-negative bacteria (e.g., Escherichia coli, Pseudomonas aeruginosa). Furthermore, the plant possesses notable antifungal and antiviral properties, making it a valuable subject for pharmacological research in treating infectious diseases.',
              style: TextStyle(fontSize: 15, height: 1.5, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIntroSection() {
    return const Card(
      elevation: 0,
      color: Color(0xFFE8F5E9),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overview',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 8),
            Text(
              'Andrographis paniculata (commonly known as "King of Bitters" or "Kalmegh") is an herbaceous plant in the family Acanthaceae. It is native to India and Sri Lanka and is widely cultivated in Southern and Southeastern Asia for its renowned medicinal properties.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReferenceItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.bookmark, size: 20, color: Colors.grey),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MorphologyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;

  const MorphologyCard({
    super.key,
    required this.title,
    required this.icon,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.green[700], size: 28),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  description,
                  style: const TextStyle(fontSize: 15, height: 1.4, color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
