import 'package:flutter/material.dart';

class Step2Page extends StatefulWidget {
  const Step2Page({super.key});

  @override
  State<Step2Page> createState() => _StepsPageState();
}

class _StepsPageState extends State<Step2Page> {
  int currentStep = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Skip",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            Column(
              children: [
                Text(
                  "Online Learning",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "We Provide Classes Online Classes and Pre Recorded Lectures.! step 2",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.all(3),
                  width: currentStep == index ? 25 : 11,
                  height: 11.0,
                  decoration: BoxDecoration(
                    color: index == currentStep ? Colors.blue : Colors.grey,
                    shape: currentStep == index
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    borderRadius: currentStep == index
                        ? const BorderRadius.all(
                            Radius.circular(
                              10,
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              onPressed: () {},
              child: const Icon(
                size: 35,
                Icons.arrow_right_alt,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
