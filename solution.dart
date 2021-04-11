void main(){
  String text = 'aaaabbaa';
  
  print(longestPalindrome(text)); // should print "aabbaa"
}

String longestPalindrome(String text){
  List palindromes = [];
  int startIndex = 0;
  int x = 2;
  
  while(startIndex < text.length){
    x = startIndex + 1;
    while(x < text.length){
      String newString = text.substring(startIndex, x + 1);
      if(isPalindrome(newString)){
        palindromes.add(newString);
      }
      x++;
    }
    startIndex++;
  }
  
  x = 0;
  String longestPalindrome = '';
  
  while(x < palindromes.length){
    if(palindromes[x].length > longestPalindrome.length){
      longestPalindrome = palindromes[x];
    }
    x++;
  }
  
  return longestPalindrome;
}

bool isPalindrome(String text){
  int x = text.length - 1;
  
  // checking if first and last characters match to reduce time complexity
  if (text[0] != text[x]) {
    return false;
  }
  String newString = '';
  while(x >= 0){
    newString += text[x];
    x--;
  }
  
  if(newString == text){
    return true;
  }
  return false;
}
