package FinalExam;

public class Main {
	
	public static void main(String[] args) {
		
		DBC connection = new DBC();
		//System.out.println("관리자 여부 : " + connection.isAdmin("admin","admin"));
		
		connection.getTag();
	}
}

