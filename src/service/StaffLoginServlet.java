package service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StaffDao;

/**
 * Servlet implementation class StaffLoginServlet
 */
public class StaffLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String staffName = request.getParameter("staffName");
		String staffPassword = request.getParameter("staffPassword");
		StaffDao dao = new StaffDao();
		String realPassword = dao.findPasswordByStaffName(staffName);
		
		
		if(realPassword.equals("No")) {
			request.setAttribute("wrongCode", "No Such User");
			request.getRequestDispatcher("staffLogin.jsp").forward(request, response);
			
		}else if(staffPassword.equals(realPassword)) {
			//System.out.println("密码匹配！");
			request.getRequestDispatcher("staff-frameset.html").forward(request, response);
		}else {
			request.setAttribute("wrongCode", "Wrong Password");
			request.getRequestDispatcher("staffLogin.jsp").forward(request, response);
		}
		
		
		
	}

}
