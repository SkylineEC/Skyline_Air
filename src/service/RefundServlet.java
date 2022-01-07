package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyerDao;
import dao.FlightDao;
import model.Buyer;
import model.Flight;

/**
 * Servlet implementation class RefundServlet
 */
public class RefundServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RefundServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * <form action="RefundServlet" method="post">
	 * 
	 * 
	 * <input type="hidden" id="flightID" name="flightID" value=<%=flight.getId()%>
	 * /> <input type="hidden" id="IDcard" name="IDcard"
	 * value=<%=request.getAttribute("ID")%> />
	 * <input type="submit" value="Confirm" /> </form>
	 * 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flightID = request.getParameter("flightID");
		String IDcard = request.getParameter("IDcard");
		BuyerDao bd = new BuyerDao();
		Buyer buyer = bd.findInfoByIDs(IDcard, flightID);
		FlightDao fd = new FlightDao();
		Flight flight = fd.getFlightById(Integer.parseInt(flightID));
		request.setAttribute("flight", flight);
		request.setAttribute("buyer", buyer);
		request.getRequestDispatcher("refund-final.jsp").forward(request, response);
		
	}

}
