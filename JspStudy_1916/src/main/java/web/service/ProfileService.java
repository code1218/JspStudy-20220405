package web.service;

public interface ProfileService {
	public boolean updateProfile(int userCode, String name, String email);
	public boolean updatePassword(int userCode, String password);
}
