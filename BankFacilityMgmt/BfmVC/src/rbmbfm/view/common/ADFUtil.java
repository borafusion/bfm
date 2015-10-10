package rbmbfm.view.common;

import javax.el.ELContext;

import javax.el.ExpressionFactory;

import javax.el.ValueExpression;

import javax.faces.context.FacesContext;

public class ADFUtil {
    public ADFUtil() {
        super();
    }
    
    public static Object resolveExpression(String elExpression) {
        FacesContext fc = FacesContext.getCurrentInstance();
        ELContext el = fc.getELContext();
        ExpressionFactory ef = fc.getApplication().getExpressionFactory();
        ValueExpression valExp = ef.createValueExpression(el, elExpression, Object.class);
        return valExp.getValue(el);
    }
}
