package action;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

//������action
public class BaseAction implements RequestAware, SessionAware,
		ApplicationAware, ServletRequestAware, ServletContextAware {

	protected Map<String, Object> request;
	protected Map<String, Object> session;
	protected Map<String, Object> application;
	protected HttpServletRequest httpReq;
	protected ServletContext httpApplication;

	// �÷����ڴ���Action�������Զ�����
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public void setApplication(Map<String, Object> application) {
		this.application = application;
	}

	public void setServletRequest(HttpServletRequest httpReq) {
		this.httpReq = httpReq;
	}

	public void setServletContext(ServletContext sc) {
		this.httpApplication = sc;
	}

}