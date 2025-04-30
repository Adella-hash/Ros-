import 'package:flutter/material.dart';

class LanguageSwitcher extends StatefulWidget {
  final List<String> languages;
  final ValueChanged<String> onLanguageChanged;

  const LanguageSwitcher({
    super.key,
    required this.languages,
    required this.onLanguageChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _LanguageSwitcherState createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  String? _selectedLanguage;

  @override
  void initState() {
    super.initState();
    _selectedLanguage = widget.languages.isNotEmpty ? widget.languages.first : null;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedLanguage,
      onChanged: (String? newValue) {
        setState(() {
          _selectedLanguage = newValue;
        });
        if (newValue != null) {
          widget.onLanguageChanged(newValue);
        }
      },
      items: widget.languages.map<DropdownMenuItem<String>>((String language) {
        return DropdownMenuItem<String>(
          value: language,
          child: Text(language),
        );
      }).toList(),
    );
  }
}