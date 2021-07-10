


package com.ct;
import java.util.*;
import java.text.*;

public class DateDemo {

   public static String getTime() {
      Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("hh:mm:ss");
      String s=ft.format(dNow);
	  return s;
}

	public static void main(String[] args) 
	{
		System.out.println(getTime());
	}
}
