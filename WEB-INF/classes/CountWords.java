package CT;

public class  CountWords
{
	public static int main(String input, String strFind) 
	{

		input=input.toLowerCase();
		strFind=strFind.toLowerCase();
		
			String a[] = input.split("\\s+"); 

			// search for pattern in a 
			int count = 0; 
			for (int i = 0; i < a.length; i++) 
			{ 
			// if match found increase count 
			if (strFind.equals(a[i])){ 
				count++; 
			}
        System.out.println(a[i]+"	Total occurrences: " + count);
			} 


        
        System.out.println("Total occurrences: " + count);
		return count;		 
	} 


	public static void main(String[] args) 
	{
		System.out.println(main("sajid sajid sajid nashu","sajid"));
	}

}
