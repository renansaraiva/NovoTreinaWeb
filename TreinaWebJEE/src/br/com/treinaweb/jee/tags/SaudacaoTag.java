package br.com.treinaweb.jee.tags;

import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class SaudacaoTag extends TagSupport {

	private static final long serialVersionUID = -6851243388277027918L;
	
	@Override
	public int doEndTag() throws JspException{
		
		Calendar calendar = new GregorianCalendar();
		int hora = calendar.get(Calendar.HOUR_OF_DAY);
		
		try {
			if (hora >= 0 && hora < 6) {
				pageContext.getOut().print("Boa Madrugada!");
			} else if (hora >= 6 && hora < 12) {
				pageContext.getOut().print("Bom Dia!");
			} else if (hora >= 12 && hora < 18) {
				pageContext.getOut().print("Boa Tarde!");
			} else {
				pageContext.getOut().print("Boa Noite!");
			}
		} catch (Exception e) {
			throw new JspException(e.getMessage());
		}
		
		return EVAL_PAGE;
	}
	
}
