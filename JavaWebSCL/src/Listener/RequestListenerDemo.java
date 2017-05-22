package Listener;

import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

import org.omg.CORBA.ARG_OUT;

/**
 * Application Lifecycle Listener implementation class RequestListenerDemo
 *
 */
@WebListener
public class RequestListenerDemo implements ServletRequestListener, AsyncListener, ServletRequestAttributeListener {

    /**
     * Default constructor. 
     */
    public RequestListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see AsyncListener#onComplete(AsyncEvent)
     */
    public void onComplete(AsyncEvent arg0) throws java.io.IOException { 
       System.out.println("RequestListenerDemo --onComplete");
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent arg0)  { 
    	System.out.println("RequestListenerDemo --onComplete");
    }

	/**
     * @see AsyncListener#onError(AsyncEvent)
     */
    public void onError(AsyncEvent arg0) throws java.io.IOException { 
    	System.out.println("RequestListenerDemo --onComplete");
    }

	/**
     * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
     */
    public void attributeRemoved(ServletRequestAttributeEvent arg0)  { 
    	System.out.println("RequestListenerDemo --attributeRemoved");
    	System.out.println("删除的为" +arg0.getName());
    }

	/**
     * @see AsyncListener#onStartAsync(AsyncEvent)
     */
    public void onStartAsync(AsyncEvent arg0) throws java.io.IOException { 
    	System.out.println("RequestListenerDemo --onStartAsync");
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    public void requestInitialized(ServletRequestEvent arg0)  { 
    	System.out.println("RequestListenerDemo --requestInitialized");
    }

	/**
     * @see AsyncListener#onTimeout(AsyncEvent)
     */
    public void onTimeout(AsyncEvent arg0) throws java.io.IOException { 
    	System.out.println("RequestListenerDemo --onTimeout");
    }

	/**
     * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
     */
    public void attributeAdded(ServletRequestAttributeEvent arg0)  { 
    	System.out.println("RequestListenerDemo --attributeAdded");
    	System.out.println("添加第一个 " +arg0.getName()+"-----"+arg0.getValue());
    	//这边是只能获取到第一个添加因为系统会默认第一个为添加，而第二个是在添加的基础上进行替换而已
    	//System.out.println("添加第二个" +arg0.getName()+"-----"+arg0.getServletRequest().getAttribute(arg0.getName()));
    }

	/**
     * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
     */
    public void attributeReplaced(ServletRequestAttributeEvent arg0)  { 
    	System.out.println("RequestListenerDemo --attributeReplaced");
    	System.out.println("替换前 " +arg0.getName()+"-----"+arg0.getValue());
    	System.out.println("替换后 " +arg0.getName()+"-----"+arg0.getServletRequest().getAttribute(arg0.getName()));
    }
}
