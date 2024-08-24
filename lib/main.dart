import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Project AI',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _searchQuery = '';

  // URL launch methods
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Show app information in a dialog
  void _showInfoDialog(BuildContext context, String info) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Information'),
          content: SingleChildScrollView(
            child: Text(info),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome To PROJECT AI'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(12.0),
              children: [
                _buildCategory(
                  context,
                  'Chatbots',
                  [
                    _buildAppData(
                      context,
                      'Chat-GPT',
                      'assets/project_ai_chatgpt.jpeg',
                      'https://chatgpt.com/',
                      'Chat-GPT: A language model developed by OpenAI that can engage in human-like conversations.',
                    ),
                    _buildAppData(
                      context,
                      'Copilot',
                      'assets/project_ai_microsoft_copilot.jpg',
                      'https://copilot.microsoft.com/',
                      'Copilot: Microsoft’s AI tool to assist developers by suggesting code and helping with productivity.',
                    ),
                    _buildAppData(
                      context,
                      'Google Bard/Gemini',
                      'assets/project_ai_Bard.jpeg',
                      'https://gemini.google.com/app?hl=en_GB',
                      'Jasper: AI writing tool for crafting various content types.',
                    ),
                    _buildAppData(
                      context,
                      'Chatspot',
                      'assets/project_ai_chatspot.jpeg',
                      'https://chatspot.ai/',
                      'Kommunicate: AI communication tool for enhancing customer engagement.',
                    ),
                    _buildAppData(
                      context,
                      'Claude',
                      'assets/project_ai_Claude.jpeg',
                      'https://claude.ai/login',
                      'Kommunicate: AI communication tool for enhancing customer engagement.',
                    ),
                    _buildAppData(
                      context,
                      'Jasper',
                      'assets/project_ai_jasper.jpeg',
                      'https://www.jasper.ai/free-trial',
                      'Jasper: AI writing tool for crafting various content types.',
                    ),
                    _buildAppData(
                      context,
                      'YouChat',
                      'assets/project_ai_you.jpeg',
                      'https://you.com/',
                      'YouChat: An AI-powered chatbot designed to assist with search and information retrieval.',
                    ),
                    _buildAppData(
                      context,
                      'Poe by Quora',
                      'assets/project_ai_poe.jpeg',
                      'https://poe.com/',
                      'Poe: AI tool for enhancing conversational capabilities within projects.',
                    ),
                    _buildAppData(
                      context,
                      'C.ai',
                      'assets/project_ai_c.jpeg',
                      'https://character.ai/',
                      'C.ai: A platform for creating and interacting with character-driven AI chatbots.',
                    ),
                    
                    _buildAppData(
                      context,
                      'HuggingChat',
                      'assets/project_ai_hugging.jpeg',
                      'https://huggingface.co/chat/',
                      'HuggingChat: A chat interface utilizing Hugging Face’s language models for versatile communication.',
                    ),
                     
                     
                    _buildAppData(
                      context,
                      'Writesonic',
                      'assets/project_ai_writesonic.jpeg',
                      'https://writesonic.com/',
                      'Writesonic: A platform that uses AI to generate high-quality written content.',
                    ),
                    
                    _buildAppData(
                      context,
                      'Kommunicate',
                      'assets/project_ai_Kommunicate.jpeg',
                      'https://dashboard.kommunicate.io/signup?isNotWorkEmail=true',
                      'Kommunicate: AI communication tool for enhancing customer engagement.',
                    ),
                    
                    
                  ],
                ),
                _buildCategory(
                  context,
                  'Marketing',
                  [
                    _buildAppData(
                      context,
                      'Writesonic',
                      'assets/project_ai_writesonic.jpeg',
                      'https://writesonic.com/',
                      'Writesonic: A platform that uses AI to generate high-quality written content.',
                    ),
                    _buildAppData(
                      context,
                      'Feathery',
                      'assets/project_ai_feathery.jpeg',
                      'https://ai.feathery.io/',
                      'Feathery: AI form-building platform that makes it easy to create and embed forms.',
                    ),
                    _buildAppData(
                      context,
                      'Emailmagic',
                      'assets/project_ai_emailmagic.jpeg',
                      'https://www.emailmagic.ai/',
                      'Emailmagic: AI tool designed to help craft compelling emails and manage inbox efficiency.',
                    ),
                    _buildAppData(
                      context,
                      'ResumAI',
                      'assets/project_ai_resumAI.jpeg',
                      'https://www.resumai.com/',
                      'ResumAI: AI platform that assists in crafting impactful resumes and cover letters.',
                    ),
                    _buildAppData(
                      context,
                      'Gptgo',
                      'assets/project_ai_gptgo.jpeg',
                      'https://gptgo.ai/',
                      'Gptgo: AI search assistant that enhances search results with AI-powered summaries.',
                    ),
                  ],
                ),
                _buildCategory(
                  context,
                  'Design',
                  [
                    _buildAppData(
                      context,
                      'Midjourney',
                      'assets/project_ai_midjourney.jpeg',
                      'https://www.midjourney.com/home',
                      'Midjourney: AI art generation tool focusing on creative image synthesis.',
                    ),
                    _buildAppData(
                      context,
                      'Magify',
                      'assets/project_ai_magify.jpeg',
                      'https://magify.design/',
                      'Magify: AI tool for enhancing and beautifying design projects.',
                    ),
                    _buildAppData(
                      context,
                      'Logomaster',
                      'assets/project_ai_logomaster.jpeg',
                      'https://logomaster.ai/',
                      'Logomaster: AI-powered platform for creating custom logos.',
                    ),
                    _buildAppData(
                      context,
                      'Stockimg',
                      'assets/project_ai_stockimg.jpeg',
                      'https://stockimg.ai/',
                      'Stockimg: AI tool that helps generate unique and professional stock images.',
                    ),
                  ],
                ),
                _buildCategory(
                  context,
                  'Writing',
                  [
                    _buildAppData(
                      context,
                      'Jasper',
                      'assets/project_ai_jasper.jpeg',
                      'https://www.jasper.ai/free-trial',
                      'Jasper: AI writing tool for crafting various content types.',
                    ),
                  ],
                ),
                _buildCategory(
                  context,
                  'Video',
                  [
                    _buildAppData(
                      context,
                      'Synthesia',
                      'assets/project_ai_synthesia.jpeg',
                      'https://www.synthesia.io/',
                      'Synthesia: A tool for creating videos with AI-generated avatars.',
                    ),
                    _buildAppData(
                      context,
                      'Pictory',
                      'assets/project_ai_pictory.jpeg',
                      'https://pictory.ai/',
                      'Pictory: AI video editor that turns long-form content into short, shareable clips.',
                    ),
                    _buildAppData(
                      context,
                      'Fliki',
                      'assets/project_ai_fliki.jpeg',
                      'https://fliki.ai/',
                      'Fliki: AI-powered video and voiceover tool for creating engaging content.',
                    ),
                  ],
                ),
                _buildCategory(
                  context,
                  'Productivity',
                  [
                    _buildAppData(
                      context,
                      'Copilot',
                      'assets/project_ai_microsoft_copilot.jpg',
                      'https://copilot.microsoft.com/',
                      'Copilot: Microsoft’s AI tool to assist developers by suggesting code and helping with productivity.',
                    ),
                    _buildAppData(
                      context,
                      'Replit',
                      'assets/project_ai_replit.jpeg',
                      'https://replit.com/',
                      'Replit: A collaborative online development environment for coding and sharing projects.',
                    ),
                    _buildAppData(
                      context,
                      'Reflect',
                      'assets/project_ai_reflect.jpeg',
                      'https://reflect.app/',
                      'Reflect: AI-powered note-taking app that organizes your thoughts and information.',
                    ),
                    _buildAppData(
                      context,
                      'Kommunicate',
                      'assets/project_ai_Kommunicate.jpeg',
                      'https://dashboard.kommunicate.io/signup?isNotWorkEmail=true',
                      'Kommunicate: AI communication tool for enhancing customer engagement.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(BuildContext context, String category, List<Widget> apps) {
    final filteredApps = apps.where((app) {
      if (_searchQuery.isEmpty) {
        return true;
      }
      final appTitle = (app as _AppData).title.toLowerCase();
      return appTitle.contains(_searchQuery);
    }).toList();

    if (filteredApps.isEmpty) {
      return const SizedBox.shrink(); // Don't display this category if no apps match the search
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            category,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: filteredApps,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Widget _buildAppData(BuildContext context, String title, String imagePath, String url, String info) {
    return _AppData(
      title: title,
      imagePath: imagePath,
      url: url,
      info: info,
      onInfoTap: () => _showInfoDialog(context, info),
      onLaunchTap: () => _launchURL(url),
    );
  }
}

class _AppData extends StatelessWidget {
  final String title;
  final String imagePath;
  final String url;
  final String info;
  final VoidCallback onInfoTap;
  final VoidCallback onLaunchTap;

  const _AppData({
    required this.title,
    required this.imagePath,
    required this.url,
    required this.info,
    required this.onInfoTap,
    required this.onLaunchTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2.0),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: InkWell(
        onTap: onLaunchTap,
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0), // Add padding around the image
                  child: Image.asset(
                    imagePath,
                    width: 120, // Increased width
                    height: 100, // Increased height
                    fit: BoxFit.contain, // Ensures the image fits within the box
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
                const SizedBox(height: 8.0), // Add space below the title
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.info_outline, color: Colors.blue), // Set icon color to blue
                onPressed: onInfoTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
