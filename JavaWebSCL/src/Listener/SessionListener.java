package Listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionActivationListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionIdListener;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionListener implements HttpSessionAttributeListener, HttpSessionActivationListener,
		HttpSessionListener, HttpSessionIdListener {

	/**
	 * Default constructor.
	 */
	public SessionListener() {
	}

	/**
	 * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
	 */
	public void sessionCreated(HttpSessionEvent param) {
		System.out.println("SessionListener-----sessionCreated");
		System.out.println("session  Id" +param.getSession().getId());
	}

	/** 
	 * @see HttpSessionIdListener#sessionIdChanged(HttpSessionEvent, String)
	 */
	public void sessionIdChanged(HttpSessionEvent paramHttpSessionEvent, String paramString) {
		System.out.println("SessionListener-----sessionIdChanged");
	}

	/**
	 * @see HttpSessionActivationListener#sessionDidActivate(HttpSessionEvent)
	 */
	public void sessionDidActivate(HttpSessionEvent paramHttpSessionEvent) {
		System.out.println("SessionListener-----sessionDidActivate");
	}

	/**
	 * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
	 */
	public void sessionDestroyed(HttpSessionEvent paramHttpSessionEvent) {
		System.out.println("SessionListener-----sessionDestroyed");
	}

	/**
	 * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
	 */
	public void attributeAdded(HttpSessionBindingEvent param) {
		System.out.println("SessionListener-----attributeAdded");
		System.out.println("Session添加的属性" +param.getName()+"="+param.getValue());
	}

	/**
	 * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
	 */
	public void attributeRemoved(HttpSessionBindingEvent paramHttpSessionBindingEvent) {
		System.out.println("SessionListener-----attributeRemoved");
	}

	/**
	 * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
	 */
	public void attributeReplaced(HttpSessionBindingEvent paramHttpSessionBindingEvent) {
		System.out.println("SessionListener-----attributeReplaced");
	}

	/**
	 * @see HttpSessionActivationListener#sessionWillPassivate(HttpSessionEvent)
	 */
	public void sessionWillPassivate(HttpSessionEvent paramHttpSessionEvent) {
		System.out.println("SessionListener-----sessionWillPassivate");
	}

}
