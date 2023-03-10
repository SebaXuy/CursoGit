public class ParkLocator {
    public static String[] country(String country){
        ParkService.ParksImplPort cont = new ParkService.ParksImplPort(); 
        String[] out = cont.byCountry(country);
        for(String con: out){
            System.debug('-->'+con);
        }
        return out; 
    }
}