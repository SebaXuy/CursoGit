@isTest
private class TestVerifyDate {
    @isTest static void testCheckDatesDate1(){
        System.debug('==>BEGIN--testCheckDatesDate1');
        Date dat1 = Date.newInstance(1960, 3, 20);
        Date dat2 = Date.newInstance(1960, 4, 16);
        
        
        Date d = VerifyDate.CheckDates(dat1,dat2);
        System.debug(d);
        
        Date result = dat1.addDays(30);
        System.assertEquals(dat2,d);
        System.debug('==>END--testCheckDatesDate1');
    }
    
    @isTest static void testCheckDatesDate1v2(){
        System.debug('==>BEGIN--testCheckDatesDate1v2');
        Date dat1 = Date.newInstance(1960, 3, 1);
        Date dat2 = Date.newInstance(1960, 4, 16);
        
        Date d = VerifyDate.CheckDates(dat1,dat2);
        System.debug(d);
        
        Date result = dat1.addDays(30);
        
        Integer totalDays = Date.daysInMonth(result.year(), result.month());
		Date lastDay = Date.newInstance(result.year(), result.month(), totalDays);
        System.debug(result);
        
        System.assertEquals(lastDay,d);
        System.debug('==>END--testCheckDatesDate1v2');
    }
    
    
    
    @isTest static void testCheckDatesDate2Mayor(){
        System.debug('==>BEGIN--testCheckDatesDate2Minor');
        Date dat1 = Date.newInstance(1960, 2, 17);
        Date dat2 = Date.newInstance(1960, 2, 20);
        
        Date d = VerifyDate.CheckDates(dat1,dat2);
        
        System.assertEquals(dat2, d);
        System.debug('==>END--testCheckDatesDate2Minor');
    }
}