package clases;

public aspect GreetingAspectJ {
	
	long startTime;
	long estimatedTime;
	
	pointcut callGreeting(): call(* HelloAspectJDemo.greeting());
    
    before() : callGreeting() {
    	startTime = System.nanoTime();
    }
    
    after() : callGreeting() {
    	estimatedTime = System.nanoTime() - startTime;
    	System.out.println("Tiempo de ejecución: "+ estimatedTime);
    }	
}