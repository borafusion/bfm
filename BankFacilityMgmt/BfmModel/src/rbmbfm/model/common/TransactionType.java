package rbmbfm.model.common;

public enum TransactionType {
    DRAFT("Draft"),APPROVED("Approved");
    private String typeStr;
    TransactionType(String typeStr) {
        this.typeStr = typeStr;
    }
    
    public String getTypeStr() {
        return this.typeStr;
    }
}
