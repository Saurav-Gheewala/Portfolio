package in.saurav;

public class R_User 
{
	private String f_name;
	private String m_name;
	private String l_name;
	private String email;
	private String b_group;
	private String m_number;
	private String id;
	private String pass;
	private String c_pass;
	
	public R_User(String f_name, String m_name, String l_name, String email, String b_group, String m_number, String id,
			String pass, String c_pass) {
		super();
		this.f_name = f_name;
		this.m_name = m_name;
		this.l_name = l_name;
		this.email = email;
		this.b_group = b_group;
		this.m_number = m_number;
		this.id = id;
		this.pass = pass;
		this.c_pass = c_pass;
	}
	R_User(){}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getM_number() {
		return m_number;
	}
	public void setM_number(String m_number) {
		this.m_number = m_number;
	}
	public String getB_group() {
		return b_group;
	}
	public void setB_group(String b_group) {
		this.b_group = b_group;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getC_pass() {
		return c_pass;
	}
	public void setC_pass(String c_pass) {
		this.c_pass = c_pass;
	}
	
}
