package service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyerDao;
import dao.RefundDao;
import dao.StaffDao;
import model.Flight;

/**
 * Servlet implementation class RefundLoginServlet
 */
public class RefundLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RefundLoginServlet() {
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
		String ID = request.getParameter("ID");
		RefundDao rd = new RefundDao();
		if(rd.findBuyerExistByIDCard(ID)) {
			ArrayList<Flight> flightList = rd.findFlightsByIDCard(ID);
			request.setAttribute("ID", ID);
			request.setAttribute("flightList", flightList);
			request.getRequestDispatcher("refund-detail.jsp").forward(request, response);
		}else {
			request.setAttribute("wrongCode", "No Such ID or Fights");
			request.getRequestDispatcher("refund.jsp").forward(request, response);
			
		}
		
		
		
	}

}
