package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FlightDao;
import model.Flight;

/**
 * Servlet implementation class CreateFlightServlet
 */
public class CreateFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateFlightServlet() {
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
		String fromAirport = request.getParameter("fromAirport");
		String toAirport = request.getParameter("toAirport");
		String vovage = request.getParameter("vovage");
		String planeModel = request.getParameter("planeModel");
		String departureDay = request.getParameter("departureDay");
		String departureTime = request.getParameter("departureTime");
		String arrivalTime = request.getParameter("arrivalTime");
		String flightNumber = request.getParameter("flightNum");
		String priceForEconomy = request.getParameter("priceForEconomy");
		String priceForPremium = request.getParameter("priceForPremium");
		String priceForBusiness = request.getParameter("priceForBusiness");
		//System.out.println(fromAirport+toAirport+vovage+planeModel+departureTime+arrivalTime+flightNum+priceForEconomy+priceForPremium+priceForBusiness);
		Flight flight = new Flight();
		flight.setFromAirport(fromAirport);
		flight.setToAirport(toAirport);
		flight.setVovage(vovage);
		flight.setPlaneModel(planeModel);
		flight.setDate(departureDay);
		flight.setDepartureTime(departureTime);
		flight.setArrivalTime(arrivalTime);
		flight.setFlightNumber(flightNumber);
		flight.setPr_economy(priceForEconomy);
		flight.setPr_premium(priceForPremium);
		flight.setPr_business(priceForBusiness);
		FlightDao fd = new FlightDao();
		fd.insertFlight(flight);
		request.getRequestDispatcher("make-route.html").forward(request, response);
		
	}

}
