package com.ct;
import CT.*;

import com.mysql.*;


import java.io.*;
import java.util.*;
import java.sql.*; 

public class Naive2 {  

		


	
	public static double main(String doc, String cat)throws Exception{
			double res=0.0; 
try{
	PrintWriter pw=null;
	pw=new PrintWriter("exp.txt");
	
	
//doc=StopWords.main(doc);
			
	double c1=doc.split("\\s+").length; //Chat Doc
			
	pw.println("Term Frequency of Chat Doc (C1)="+c1);
	pw.println("");			pw.println("");
			
			Connection con = DatabaseCon.getConnection();
			Statement st = con.createStatement();
			String sss1 = "select * from words where cat='"+cat+"'";
			System.out.println(sss1);
			ResultSet rs=st.executeQuery(sss1);
			double p_c=0.0; 

			
			String docn="";
			while(rs.next()){
			docn= docn+" "+rs.getString("subject_");
			}
			res=0; p_c=0;
			
	//		docn=StopWords.main(docn);

			double c2=docn.split("\\s+").length;
			//pw.print("c1 value"+c2);
			
			p_c=c2/(c1+c2);
			pw.print("	P(c)=(c2/c1+c2)="+p_c);

			
			docn=docn.trim();

			double tk=0;

			for(String token:Tokenizer.main(docn))
			{	System.out.println("-----------------"+token);
				tk=tk+CountWords.main(doc,token); 

			}
			//Smoothing
			
			res=tk/c2;
			
			
			

			System.out.println("	Count Matched tk+1="+tk);




			


}catch(Exception e){
System.out.println(e);
}
			return res;
	}

 }