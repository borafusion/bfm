package rbmbfm.model.eo.app;

import java.math.BigDecimal;

import java.sql.Timestamp;

import oracle.jbo.AttributeList;
import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
import oracle.jbo.server.SequenceImpl;
import oracle.jbo.server.TransactionEvent;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Tue Sep 29 20:51:10 PDT 2015
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class TransactionBaseEOImpl extends EntityImpl {
    /**
     * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
     */
    public enum AttributesEnum {
        TransactionId,
        Type,
        TransactionNumber,
        Creator,
        Approver,
        CreatedBy,
        CreationDate,
        LastUpdatedBy,
        LastUpdateDate,
        LastUpdateLogin,
        Version,
        TenantId,
        TransactionDetailEO,
        TransactionDocumentRefEO;
        private static AttributesEnum[] vals = null;
        private static final int firstIndex = 0;

        public int index() {
            return AttributesEnum.firstIndex() + ordinal();
        }

        public static final int firstIndex() {
            return firstIndex;
        }

        public static int count() {
            return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
        }

        public static final AttributesEnum[] staticValues() {
            if (vals == null) {
                vals = AttributesEnum.values();
            }
            return vals;
        }
    }
    public static final int TRANSACTIONID = AttributesEnum.TransactionId.index();
    public static final int TYPE = AttributesEnum.Type.index();
    public static final int TRANSACTIONNUMBER = AttributesEnum.TransactionNumber.index();
    public static final int CREATOR = AttributesEnum.Creator.index();
    public static final int APPROVER = AttributesEnum.Approver.index();
    public static final int CREATEDBY = AttributesEnum.CreatedBy.index();
    public static final int CREATIONDATE = AttributesEnum.CreationDate.index();
    public static final int LASTUPDATEDBY = AttributesEnum.LastUpdatedBy.index();
    public static final int LASTUPDATEDATE = AttributesEnum.LastUpdateDate.index();
    public static final int LASTUPDATELOGIN = AttributesEnum.LastUpdateLogin.index();
    public static final int VERSION = AttributesEnum.Version.index();
    public static final int TENANTID = AttributesEnum.TenantId.index();
    public static final int TRANSACTIONDETAILEO = AttributesEnum.TransactionDetailEO.index();
    public static final int TRANSACTIONDOCUMENTREFEO = AttributesEnum.TransactionDocumentRefEO.index();

    /**
     * This is the default constructor (do not remove).
     */
    public TransactionBaseEOImpl() {
    }

    /**
     * Gets the attribute value for TransactionId, using the alias name TransactionId.
     * @return the value of TransactionId
     */
    public BigDecimal getTransactionId() {
        return (BigDecimal) getAttributeInternal(TRANSACTIONID);
    }

    /**
     * Sets <code>value</code> as the attribute value for TransactionId.
     * @param value value to set the TransactionId
     */
    public void setTransactionId(BigDecimal value) {
        setAttributeInternal(TRANSACTIONID, value);
    }

    /**
     * Gets the attribute value for Type, using the alias name Type.
     * @return the value of Type
     */
    public String getType() {
        return (String) getAttributeInternal(TYPE);
    }

    /**
     * Sets <code>value</code> as the attribute value for Type.
     * @param value value to set the Type
     */
    public void setType(String value) {
        setAttributeInternal(TYPE, value);
    }

    /**
     * Gets the attribute value for TransactionNumber, using the alias name TransactionNumber.
     * @return the value of TransactionNumber
     */
    public String getTransactionNumber() {
        return (String) getAttributeInternal(TRANSACTIONNUMBER);
    }

    /**
     * Sets <code>value</code> as the attribute value for TransactionNumber.
     * @param value value to set the TransactionNumber
     */
    public void setTransactionNumber(String value) {
        setAttributeInternal(TRANSACTIONNUMBER, value);
    }

    /**
     * Gets the attribute value for Creator, using the alias name Creator.
     * @return the value of Creator
     */
    public String getCreator() {
        return (String) getAttributeInternal(CREATOR);
    }

    /**
     * Sets <code>value</code> as the attribute value for Creator.
     * @param value value to set the Creator
     */
    public void setCreator(String value) {
        setAttributeInternal(CREATOR, value);
    }

    /**
     * Gets the attribute value for Approver, using the alias name Approver.
     * @return the value of Approver
     */
    public String getApprover() {
        return (String) getAttributeInternal(APPROVER);
    }

    /**
     * Sets <code>value</code> as the attribute value for Approver.
     * @param value value to set the Approver
     */
    public void setApprover(String value) {
        setAttributeInternal(APPROVER, value);
    }

    /**
     * Gets the attribute value for CreatedBy, using the alias name CreatedBy.
     * @return the value of CreatedBy
     */
    public String getCreatedBy() {
        return (String) getAttributeInternal(CREATEDBY);
    }

    /**
     * Gets the attribute value for CreationDate, using the alias name CreationDate.
     * @return the value of CreationDate
     */
    public Timestamp getCreationDate() {
        return (Timestamp) getAttributeInternal(CREATIONDATE);
    }

    /**
     * Gets the attribute value for LastUpdatedBy, using the alias name LastUpdatedBy.
     * @return the value of LastUpdatedBy
     */
    public String getLastUpdatedBy() {
        return (String) getAttributeInternal(LASTUPDATEDBY);
    }

    /**
     * Gets the attribute value for LastUpdateDate, using the alias name LastUpdateDate.
     * @return the value of LastUpdateDate
     */
    public Timestamp getLastUpdateDate() {
        return (Timestamp) getAttributeInternal(LASTUPDATEDATE);
    }

    /**
     * Gets the attribute value for LastUpdateLogin, using the alias name LastUpdateLogin.
     * @return the value of LastUpdateLogin
     */
    public String getLastUpdateLogin() {
        return (String) getAttributeInternal(LASTUPDATELOGIN);
    }

    /**
     * Gets the attribute value for Version, using the alias name Version.
     * @return the value of Version
     */
    public BigDecimal getVersion() {
        return (BigDecimal) getAttributeInternal(VERSION);
    }

    /**
     * Gets the attribute value for TenantId, using the alias name TenantId.
     * @return the value of TenantId
     */
    public BigDecimal getTenantId() {
        return (BigDecimal) getAttributeInternal(TENANTID);
    }

    /**
     * Sets <code>value</code> as the attribute value for TenantId.
     * @param value value to set the TenantId
     */
    public void setTenantId(BigDecimal value) {
        setAttributeInternal(TENANTID, value);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getTransactionDetailEO() {
        return (RowIterator) getAttributeInternal(TRANSACTIONDETAILEO);
    }

    /**
     * @return the associated entity oracle.jbo.RowIterator.
     */
    public RowIterator getTransactionDocumentRefEO() {
        return (RowIterator) getAttributeInternal(TRANSACTIONDOCUMENTREFEO);
    }

    /**
     * @param transactionId key constituent

     * @return a Key object based on given key constituents.
     */
    public static Key createPrimaryKey(BigDecimal transactionId) {
        return new Key(new Object[] { transactionId });
    }

    /**
     * @return the definition object for this instance class.
     */
    public static synchronized EntityDefImpl getDefinitionObject() {
        return EntityDefImpl.findDefObject("rbmbfm.model.eo.app.TransactionBaseEO");
    }

    /**
     * Add locking logic here.
     */
    public void lock() {
        super.lock();
    }

    /**
     * Custom DML update/insert/delete logic here.
     * @param operation the operation type
     * @param e the transaction event
     */
    protected void doDML(int operation, TransactionEvent e) {
        super.doDML(operation, e);
    }
    
    /**
     * Add attribute defaulting logic in this method.
     * @param attributeList list of attribute names/values to initialize the row
     */
    protected void create(AttributeList attributeList) {
        super.create(attributeList);
        
        setTransactionNumber("TXN"+System.currentTimeMillis());
    }    
}
