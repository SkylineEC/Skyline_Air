package service;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FlightDao;
import model.Flight;

/**
 * Servlet implementation class SelectSeatServlet
 */
public class SelectSeatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectSeatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String ids = request.getParameter("seats");
		String classLevel = request.getParameter("classLevel");
		String flightID = request.getParameter("flightID");
		
		String[] splitSeat=ids.split(",");
		int num_ticket = splitSeat.length;
		
		FlightDao fd = new FlightDao();
		System.out.println("ids:"+ids);
		System.out.println("classLevel:"+classLevel);
		System.out.println("flightID:"+flightID);
		fd.updateTicketStatus(flightID,classLevel,num_ticket);
		Flight flight  =  fd.getFlightById(Integer.parseInt(flightID));
		request.setAttribute("flight", flight);
		request.setAttribute("splitSeat", splitSeat);
		request.setAttribute("classLevel", classLevel);
		request.getRequestDispatcher("identity.jsp").forward(request, response);
	
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
