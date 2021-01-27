public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String cleanWord = filter(word);
  String reversed = reverse(cleanWord);
  if(cleanWord.equals(reversed))
  {
    return true;
  }
  return false;
}

public String filter(String dirtyWord)
{
  String lettersRemoved = onlyLetters(dirtyWord);
  String spacesRemoved = noSpaces(lettersRemoved);
  String cleanWord = noCapitals(spacesRemoved);
  return cleanWord;
}

public String reverse(String sWord)
{
  String s = "";
  
  for(int i = 0; i < sWord.length(); i++)
  {
    s = s.concat(sWord.substring(sWord.length()-i-1,sWord.length()-i));
  }
  
  return s;
}

public String onlyLetters(String sString){
  String answer = "";
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)))
    {
      answer = answer.concat(sString.substring(i,i+1));
    }
  }
  return answer;
}

public String noSpaces(String sWord){
  String answer = "";
  for (int i = 0; i < sWord.length(); i++)
  {
    if(!sWord.substring(i,i+1).equals(" "))
    {
      answer = answer.concat(sWord.substring(i,i+1));
    }
  }
  return answer;
}

public String noCapitals(String sWord){
  String answer = sWord.toLowerCase();
  return answer;
}



