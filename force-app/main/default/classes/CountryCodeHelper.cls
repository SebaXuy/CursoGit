/**
 * @description       : 
 * @author            : Sebastian.Y.Raggio.-ND@disney.com
 * @group             : 
 * @last modified on  : 12-27-2021
 * @last modified by  : Sebastian.Y.Raggio.-ND@disney.com
**/
public class CountryCodeHelper {
    public static string getCountryCode(String country) {
      
        Country_Code__mdt countryCode =  Country_Code__mdt.getInstance(country);
    
      return countryCode.Country_Code__c;
    }
  }