package libralies;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.User;

public class checkLogin {
	
	public static boolean checkLogin(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		if (user == null) {
			try {
			response.sendRedirect(request.getContextPath() + "/login");
			return false;
			}catch( IOException e) {
				e.printStackTrace();
			}
		}
		
		return true;
	}
}
