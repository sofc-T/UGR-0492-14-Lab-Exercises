import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
  "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
  "The only way to achieve the impossible is to believe it is possible. - Charles Kingsleigh, 'Alice in Wonderland'",
  "I have not failed. I've just found 10,000 ways that won't work. - Thomas A. Edison",
  "You miss 100% of the shots you don't take. - Wayne Gretzky",
  "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
  "Your time is limited, don't waste it living someone else's life. - Steve Jobs"
];

  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}

void main() async {
  print("Fetching a quote ...");
  String quote = await fetchQuote();

  print(quote);
}
