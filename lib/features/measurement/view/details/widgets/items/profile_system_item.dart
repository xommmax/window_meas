import 'package:flutter/material.dart';
import 'package:window_meas/common/asset_manager.dart';
import 'package:window_meas/l10n/localization.dart';

class ProfileSystemItem extends StatelessWidget {
  const ProfileSystemItem({
    required this.title,
    required this.value,
    this.onChanged,
    super.key,
  });

  final String title;
  final String value;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () async {
          final option = await showModalBottomSheet<String>(
            context: context,
            isScrollControlled: true,
            useSafeArea: true,
            builder: (context) => const _ProfileSystemBottomSheet(),
          );
          if (option != null) {
            onChanged?.call(option);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Row(
            children: [
              Text(
                '$title: ',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                value.isNotEmpty ? value : Localization.l10n.none,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      );
}

class _ProfileSystemBottomSheet extends StatefulWidget {
  const _ProfileSystemBottomSheet();

  @override
  State<_ProfileSystemBottomSheet> createState() => _ProfileSystemBottomSheetState();
}

class _ProfileSystemBottomSheetState extends State<_ProfileSystemBottomSheet> {
  late final TextEditingController controller;
  String query = '';

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(() => setState(() => query = controller.text));
  }

  @override
  Widget build(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * 0.8,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: Localization.l10n.enterValue,
                border: const OutlineInputBorder(),
              ),
              textCapitalization: TextCapitalization.sentences,
              maxLines: 1,
              autofocus: true,
            ),
            Expanded(
              child: FutureBuilder<List<String>>(
                  future: AssetManager.getProfileSystems(),
                  builder: (context, snapshot) {
                    final profileSystems = snapshot.data ?? [];
                    final filteredProfileSystems = profileSystems
                        .where((e) => e.toLowerCase().contains(query.toLowerCase()))
                        .toList();
                    filteredProfileSystems.add(query);
                    return ListView.builder(
                      itemCount: filteredProfileSystems.length,
                      itemBuilder: (context, index) {
                        final profileSystem = filteredProfileSystems[index];
                        return ListTile(
                          title: Text(profileSystem),
                          onTap: () => Navigator.of(context).pop(profileSystem),
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      );

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
