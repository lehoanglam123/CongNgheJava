package Model;

public class Account {
	private int id;
	private String userName;
	private String passWords;
	private int isAdmin;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWords() {
		return passWords;
	}
	public void setPassWords(String passWords) {
		this.passWords = passWords;
	}
	public int getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}
	
}
