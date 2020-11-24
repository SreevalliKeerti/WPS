package beans;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
public class ShowDataBean
{

	String error;
	List<Object> allData=new ArrayList<Object>();
	public int eid, count;
	public String id,name,image,dob;
	Object obj=new Object();


	public void setObj(Object obj) {
		this.obj = obj;
	}
	public String getError() {
		return error;
	}
	public void setEid(int eid) {
		this.eid=eid;
	}
	public int getCount(){
		return count;
	}

	public List getDb_Data()
	{
		int i=0;

		try
		{
			String qry;

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/emp","root","");
			Statement s = con.createStatement();  

			ResultSet rs = s.executeQuery("select count(*) from employees");
			rs.next();

			count = rs.getInt("count(*)");

			if(eid>count) {
				System.out.println("No employee found with that Id!!!");
			}

			else {
				qry="Select * from employees where empid='" + eid + "'";
				ResultSet r=s.executeQuery(qry);
				while(r.next())
				{
					DataFields d=new DataFields(r.getString(1), r.getString(2), r.getString(3), r.getString(4));                    
					allData.add(i,d);
					i++;
				}
			}
		}
		catch(Exception ex)
		{
			error="<b>Contact Administrator :</b><br/>" + ex;
			System.out.println("Your query is not working" + ex);
		}
		return allData;
	}
	public String getid()
	{
		this.id=((DataFields)obj).id;
		return this.id;
	}
	public String getname()
	{
		this.name=((DataFields)obj).name;
		return this.name;
	}
	public String getdob() {
		this.dob=((DataFields)obj).dob;
		return this.dob;
	}

	public String getimage() {
		this.image=((DataFields)obj).image;
		return this.image;
	}


	public class DataFields
	{
		public String id,name,image,dob;

		public DataFields(String  id, String  name,String  dob,String  image)
		{
			this.id=id;
			this.name=name;
			this.dob=dob;
			this.image=image;
		}
	}

}