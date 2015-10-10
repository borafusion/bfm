package rbmbfm.view;

import java.math.BigDecimal;

import javax.faces.event.ValueChangeEvent;

import rbmbfm.view.common.ADFUtil;

public class TransactionDetailBean {
    public TransactionDetailBean() {
        super();
    }

    public void businessEntityValueChangeListener(ValueChangeEvent valueChangeEvent) {
        System.out.println(" Buz Entity: " + valueChangeEvent.getNewValue());
        
        BigDecimal issuingBankId = (BigDecimal)ADFUtil.resolveExpression("#{bindings.IssuingBankId.inputValue}");
        System.out.println(issuingBankId);
    }
}
