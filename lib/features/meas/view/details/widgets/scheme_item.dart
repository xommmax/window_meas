import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:window_meas/l10n/localization.dart';

class SchemeItem extends StatelessWidget {
  const SchemeItem({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              '${context.l10n.scheme}: ',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            Expanded(
              child: Center(
                child: InkWell(
                  child: const FaIcon(FontAwesomeIcons.squarePlus),
                  onTap: () => context.push('/editor'),
                ),
              ),
            ),
          ],
        ),
      );
}
