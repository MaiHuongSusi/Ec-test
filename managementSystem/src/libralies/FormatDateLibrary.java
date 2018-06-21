package libralies;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatDateLibrary {
	
	public static String FormatDateUntilToString(java.util.Date date) {
		SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sfd.format(date);
	}
	
	public static java.sql.Date ConvertDateUntilToDateSQL(Date date){
		String day = FormatDateUntilToString(date);
		return ConvertStringToDateSQL(day);
	}
	
	
	public static java.sql.Date ConvertStringToDateSQL(String dateSTring) {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        Date parsed;
        java.sql.Date sql = null;
		try {
			parsed = format.parse(dateSTring);
	        sql = new java.sql.Date(parsed.getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        return sql;
		
	}

}
