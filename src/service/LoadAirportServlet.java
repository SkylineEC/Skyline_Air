package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

/**
 * Servlet implementation class LoadAirportServlet
 */
public class LoadAirportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadAirportServlet() {
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
		// TODO Auto-generated method stub

				response.setCharacterEncoding("UTF-8");
				String flag = request.getParameter("flag");
				LoadService service = new LoadService();
				
				List<HashMap<String,String>> alhs = null;
				if(flag == null) {
					alhs = service.selectProvinceAll();
				}
				
				if(flag != null && flag.equals("1")) {
					//����ʡ����
					String code = request.getParameter("code");
					alhs = service.selectCityByCode(code);
				}
				if(flag != null && flag.equals("2")) {
					//����ʡ����
					String code = request.getParameter("code");
					
					alhs = service.selectAirportByCode(code);
				}
				PrintWriter out = response.getWriter();
				
				Gson g = new Gson();
				
				String json = g.toJson(alhs);
				
				//[{"code":"110000","name":"������","id":"1"},{"code":"120000","name":"�����","id":"2"},{"code":"130000","name":"�ӱ�ʡ","id":"3"},{"code":"140000","name":"ɽ��ʡ","id":"4"},{"code":"150000","name":"���ɹ�","id":"5"},{"code":"210000","name":"����ʡ","id":"6"},{"code":"220000","name":"����ʡ","id":"7"},{"code":"230000","name":"������","id":"8"},{"code":"310000","name":"�Ϻ���","id":"9"},{"code":"320000","name":"����ʡ","id":"10"},{"code":"330000","name":"�㽭ʡ","id":"11"},{"code":"340000","name":"����ʡ","id":"12"},{"code":"350000","name":"����ʡ","id":"13"},{"code":"360000","name":"����ʡ","id":"14"},{"code":"370000","name":"ɽ��ʡ","id":"15"},{"code":"410000","name":"����ʡ","id":"16"},{"code":"420000","name":"����ʡ","id":"17"},{"code":"430000","name":"����ʡ","id":"18"},{"code":"440000","name":"�㶫ʡ","id":"19"},{"code":"450000","name":"��  ��","id":"20"},{"code":"460000","name":"����ʡ","id":"21"},{"code":"500000","name":"������","id":"22"},{"code":"510000","name":"�Ĵ�ʡ","id":"23"},{"code":"520000","name":"����ʡ","id":"24"},{"code":"530000","name":"����ʡ","id":"25"},{"code":"540000","name":"��  ��","id":"26"},{"code":"610000","name":"����ʡ","id":"27"},{"code":"620000","name":"����ʡ","id":"28"},{"code":"630000","name":"�ຣʡ","id":"29"},{"code":"640000","name":"��  ��","id":"30"},{"code":"650000","name":"��  ��","id":"31"},{"code":"710000","name":"̨��ʡ","id":"32"},{"code":"810000","name":"��  ��","id":"33"},{"code":"820000","name":"��  ��","id":"34"}]
		
				out.print(json);
				out.flush();
				out.close();
	}

}
