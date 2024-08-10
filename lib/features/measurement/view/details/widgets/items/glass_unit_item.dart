import 'package:flutter/material.dart';
import 'package:window_meas/common/asset_manager.dart';
import 'package:window_meas/l10n/localization.dart';

class GlassUnitItem extends StatelessWidget {
  const GlassUnitItem({
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
            builder: (context) => const _GlassUnitBottomSheet(),
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

class _GlassUnitBottomSheet extends StatefulWidget {
  const _GlassUnitBottomSheet();

  @override
  State<_GlassUnitBottomSheet> createState() => _GlassUnitBottomSheetState();
}

class _GlassUnitBottomSheetState extends State<_GlassUnitBottomSheet> {
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
                  future: AssetManager.getGlassUnits(),
                  builder: (context, snapshot) {
                    final glassUnits = snapshot.data ?? [];
                    final filteredGlassUnits = glassUnits
                        .where((e) => e.toLowerCase().contains(query.toLowerCase()))
                        .toList();
                    filteredGlassUnits.add(query);
                    return ListView.builder(
                      itemCount: filteredGlassUnits.length,
                      itemBuilder: (context, index) {
                        final glassUnit = filteredGlassUnits[index];
                        return ListTile(
                          title: Text(glassUnit),
                          onTap: () => Navigator.of(context).pop(glassUnit),
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
