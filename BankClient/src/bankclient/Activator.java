package bankclient;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

import com.sapient.service1.ISer;
import com.sapient.service1.SerImpl;
import com.sapient.service2.ISer2;
import com.sapient.service2.Ser2Impl;

/**
 * The activator class controls the plug-in life cycle
 */
public class Activator extends AbstractUIPlugin {

	private ServiceReference sref = null;
	public Activator() {
	}

	
	public void start(BundleContext context) throws Exception {
		System.out.println("Bank Client Started");
		sref = context.getServiceReference(ISer.class.getName());
		ISer ser = (ISer)context.getService(sref);
		System.out.println(ser.calcSimple(200, 2, 3));
	}

	
	public void stop(BundleContext context) throws Exception {
		
		super.stop(context);
		System.out.println("Bank Client stopped");
	}

	
	
	
}
