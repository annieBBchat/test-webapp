package test.webapp.login;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public static boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("expertus") && password.equals("test");
		// hard-coded values to be replaced by values entered by user
	}

}