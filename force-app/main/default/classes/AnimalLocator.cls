public class AnimalLocator {
    
    public static String getAnimalNameById(Integer ids){
        System.debug('-->Begin getAnimalNameById<--');
        String out=null;
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ids);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        if (response.getStatusCode() == 200) 
        {
            System.debug('All Data:'+response.getBody());
            
            Map<String, Object> animal = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> an = (Map<String, Object>) animal.get('animal');
			out = (String)an.get('name');
            System.debug(out);
        }
        System.debug('-->End getAnimalNameById<--');
    	return out;
    }
    
}