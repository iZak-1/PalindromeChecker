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
  boolean output = false;
  if(makeSimple(word).equals(makeSimple(reverse(word)))) {
    output = true;
  }
  return output;
}

public String reverse(String str)
{
    String sNew = new String();
    for(int iRev=0; iRev<str.length(); iRev++) {
      sNew+=str.charAt(str.length()-iRev-1);
    }
    return sNew;
}

public String makeSimple(String inputText) {
    String simpleNew = new String();
    
    for(int iSimple=0; iSimple<inputText.length(); iSimple++) {
      char aC=inputText.charAt(iSimple);
      if(aC>='A'&&aC<='z') {
        simpleNew+=aC;
      }
    }
    return simpleNew.toLowerCase();
}
