
package com.ct;
import java.util.*;
import java.util.regex.*;
import java.text.*;



public class ExtractUrl
{


public static     List<String>  extractUrls(String text)
{
    List<String> containedUrls = new ArrayList<String>();
    String urlRegex = "((https?|ftp|gopher|telnet|file):((//)|(\\\\))+[\\w\\d:#@%/;$()~_?\\+-=\\\\\\.&]*)";
    Pattern pattern = Pattern.compile(urlRegex, Pattern.CASE_INSENSITIVE);
    Matcher urlMatcher = pattern.matcher(text);

    while (urlMatcher.find())
    {
        containedUrls.add(text.substring(urlMatcher.start(0),
                urlMatcher.end(0)));
    }

    return containedUrls;
}

	public static void main(String[] args) 
	{
		extractUrls("Welcome to https://stackoverflow.com/ and here is another link http://www.google.com/ \n which is a great search engine");



	}

}