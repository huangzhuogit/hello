package org.tp.ssm_tpzy.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class DateConverter implements Converter<String, Date>{
	
  private SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

	public Date convert(String value) {
		Date date=null;
		   try {
			 date=sdf.parse(value);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   return date;
	}
	
}
