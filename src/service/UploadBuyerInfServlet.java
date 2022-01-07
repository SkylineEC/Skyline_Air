package service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BuyerDao;
import dao.SeatsDao;
import model.Buyer;
import model.Seats;

/**
 * Servlet implementation class UploadBuyerInfServlet
 */
public class UploadBuyerInfServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadBuyerInfServlet() {
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
		request.setCharacterEncoding("UTF-8");
		System.out.println(request.getParameter("flightID"));
		Buyer buyer = new Buyer();
		buyer.setPaidMoney(Integer.parseInt(request.getParameter("paidMoney").split("/")[0]));
		buyer.setName(request.getParameter("name"));
		buyer.setIDCard(request.getParameter("IDCard"));
		buyer.setPhoneNumber(request.getParameter("phoneNumber"));
		buyer.setFlightID(Integer.parseInt(request.getParameter("flightID").split("/")[0]));
		buyer.setClassLevel(request.getParameter("classLevel").split("/")[0]);
		buyer.setTicketNumber(request.getParameter("ticketNumber").split("/")[0]);
		buyer.setBankCardNumber(request.getParameter("bankCardNumber"));
		
		
		Seats seats = new Seats();
		seats.setFlightID(request.getParameter("flightID").split("/")[0]);
		
		SeatsDao sd = new SeatsDao();
		System.out.println("classLevel:"+request.getParameter("classLevel").split("/")[0]);
		
		seats.setSeats(request.getParameter("seats").split("/")[0]);
		seats.setFlightID(request.getParameter("flightID").split("/")[0]);
		sd.addSeats(seats,request.getParameter("classLevel").split("/")[0]);
		BuyerDao bd = new BuyerDao();
		bd.insertBuyer(buyer);
		request.getRequestDispatcher("success-book.html").forward(request, response);
		
	}

}
