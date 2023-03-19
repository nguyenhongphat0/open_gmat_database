import 'package:flutter/material.dart';
import 'package:open_gmat_database/state/database.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class GrammarlyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseState>(
      builder: (context, value, child) => Tooltip(
        message: 'Open Grammarly',
        child: IconButton(
          icon: const Icon(Icons.spellcheck),
          onPressed: () async {
            final text = value.questionContent;
            if (text != null) {
              final url = Uri.parse(
                  "https://app.grammarly.com/docs/new?disableAppsPromotion=true");
              await launchUrl(url);
            }
          },
        ),
      ),
    );
  }
}
