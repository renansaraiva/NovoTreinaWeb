package br.com.treinaweb.jee.tags;

import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class SaudacaoTag extends TagSupport {

	private static final long serialVersionUID = -6851243388277027918L;
	
	private String nome = "";
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Override
	public int doEndTag() throws JspException{
		
		Calendar calendar = new GregorianCalendar();
		int hora = calendar.get(Calendar.HOUR_OF_DAY);
		String mensagem = "";
		
		try {
			
			if (hora >= 0 && hora < 6) {
				mensagem = "Boa Madrugada";
			} else if (hora >= 6 && hora < 12) {
				mensagem = "Bom Dia";
			} else if (hora >= 12 && hora < 18) {
				mensagem = "Boa Tarde";
			} else {
				mensagem = "Boa Noite";
			}
			
			if (this.nome != null && !this.nome.equals("")) {
				mensagem = mensagem + ", " + this.nome;
			}
			
			mensagem += "!";
			pageContext.getOut().print(mensagem);
			
		} catch (Exception e) {
			throw new JspException(e.getMessage());
		}
		
		return EVAL_PAGE;
	}
	
}
