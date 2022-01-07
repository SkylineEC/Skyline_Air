package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DiscountDao;

/**
 * Servlet implementation class SetDiscountServlet
 */
public class SetDiscountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SetDiscountServlet() {
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
		
	String flightNumber = request.getParameter("flightNumber");
	String selectDiscount = request.getParameter("selectDiscount");
	System.out.println(selectDiscount);
	String discountStartDay = request.getParameter("discountStartDay");
	String discountEndDay = request.getParameter("discountEndDay");
	DiscountDao dd = new DiscountDao();
	dd.setDiscount(flightNumber, selectDiscount, discountStartDay, discountEndDay);
	request.getRequestDispatcher("setDiscountSuccess.jsp").forward(request, response);
	
	
	
	
	}

}
