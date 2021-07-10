package com.ct;

import java.util.StringTokenizer;  
import java.util.Set;  
import java.util.HashSet;  
import java.util.Vector;  


public class Tokenizer{  


// public static Vector<String> main(String s){  
 public static Set<String> main(String s){  
	 Set<String> set=new HashSet<String>();
// Vector<String> set=new Vector<String>();

   StringTokenizer st = new StringTokenizer(s," .!#");  
     while (st.hasMoreTokens()) {  
		set.add(st.nextToken());					

	 }  
 return set;
 }  



 public static void main(String args[]){  

		 System.out.println(main("My Name is sumanth and My Name is sumanth"));  
 }  




}  