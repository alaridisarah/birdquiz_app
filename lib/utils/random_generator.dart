import 'dart:math';

// Function to generate a random number within a specified range
int generateUniqueRandomNumber(int max, List<int> usedNumbers) {
  Random random = Random();
  int randomNumber;

  do {
    randomNumber = 0 + random.nextInt(max + 1);
  } while (usedNumbers.contains(randomNumber));

  usedNumbers.add(randomNumber);

  return randomNumber;
}
