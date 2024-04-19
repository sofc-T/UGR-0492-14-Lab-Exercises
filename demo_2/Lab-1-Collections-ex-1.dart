void main() {
  List<String> hobbies = ["Reading", "Writing", "Hiking", "Cooking", "Playing piano"];

  hobbies.add("Painting");

  print("After adding a hobby:");
  print(hobbies);

  hobbies.remove("Cooking");

  print("After removing a hobby:");
  print(hobbies);

  hobbies.sort();

  print("After sorting the hobbies:");
  print(hobbies);

  if (hobbies.isEmpty) {
    print("The list is empty.");
  } else {
    print("The list is not empty.");
  }

  hobbies.clear();

  print("After clearing the list:");
  print(hobbies);

  if (hobbies.isEmpty) {
    print("The list is empty.");
  } else {
    print("The list is not empty.");
  }
}
