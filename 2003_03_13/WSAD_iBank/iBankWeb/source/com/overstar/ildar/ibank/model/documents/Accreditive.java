package com.overstar.ildar.ibank.model.documents;

import java.sql.Date;
import com.overstar.ildar.ibank.model.exceptions.*;
import com.overstar.ildar.ibank.model.*;
/**
* Insert the type's description here.
* Creation date: (12.02.2003 15:27:14)
* @author: Shafigullin Ildar
*/
public class Accreditive extends Document {

    /**
    * '��� �����������, ����� ��������� ��������:
    */
    private String accreditiv_type;

    /**
     * �����������.
     */
    public static final String EMPTY = " ";

    /**
     * "������".
     */
    public static final String POST = "������";

    /**
     * "����������",.
     */
    public static final String TELEGRAPH = "����������";

    /**
     * "����������".
     */
    public static final String ELECTRONIC = "����������";

    /**
     * '��� ��������, ��� ������������ "08"';
     */
    private String type_oper = "08";

    /**
     * '����������� ������������ ������� (�����, �����), ����� � ���� ��������,
     *  ���� �������� ������� (���������� �����, �������� �����), ���������������
     *  � ����� ����������';
     */
    private String accreditiv_details;

    /**
     * '���� �������� �����������';;
     */
    private Date term;

    /**
     * '����� ������� (� �������� ������ - ������)';
     */
    private Money amount;

    //����������
    private BusinessPartner payer;
    //����������
    private BusinessPartner recipient;

    /**
     * '����� ����������� ����� N 40901 "����������� � ������".';
     */
    private java.lang.String account_40901;

    /**
     * '��� ����������� 1, 
     *  ����� ��������� �������� "��������" ��� "�����������"'("��������������" ��� "���������������");
     */
    private java.lang.String type_accreditiv1;

    /**
     * '��� ����������� 2,
     *  ����� ��������� �������� "��������" ��� "����������"';
     */
    private java.lang.String type_accreditiv2;

    /**
     * '������� ������, 
     *  ����� ��������� �������� "� ��������" ��� "��� �������"';
     */
    private java.lang.String condition_pay;

    /**
     * '������������ ����������, 
     *  ������ ������� ������������ ������� �� �����������';
     */
    private java.lang.String accreditiv_docs;

    // '�������������� �������';
	private java.lang.String add_condition;
/**
 * Accreditive constructor comment.
 * @param anId com.overstar.ildar.ibank.model.documents.Document.DocumentPK
 * @param anClient_id java.lang.Integer
 * @param anDate_doc java.sql.Date
 * @param anNum_doc java.lang.String
 * @param anStatus_doc java.lang.String
 * @param anSigners java.lang.String
 * @param anAccreditiev_type java.lang.String
 * @param anPayer BusinessPartner
 * @param anAmount Money
 * @param anRecipient BusinessPartner
 * @param anAccount_40901 String
 * @param anType_oper String
 * @param anTerm java.sql.Date
 * @param anType_accreditiv1 String
 * @param anType_accreditiv2 String
 * @param anCondition_Pay
 * @param anAccreditive_details String
 * @param anAccreditiv_docs String
 * @param anAddConditions String
 * @exception com.overstar.ildar.ibank.model.exceptions.InvalidDocumentStatusException The exception description.
 */
public Accreditive(
    com.overstar.ildar.ibank.model.documents.Document.DocumentPK anId,
    Integer anClient_id,
    java.sql.Date anDate_doc,
    String anNum_doc,
    String anStatus_doc,
    String anSigners,
    String anAccreditiev_type,
    BusinessPartner anPayer,
    Money anAmount,
    BusinessPartner anRecipient,
    String anAccount_40901,
    String anType_oper,
    java.sql.Date anTerm,
    String anType_accreditiv1,
    String anType_accreditiv2,
    String anCondition_Pay,
    String anAccreditiv_details,
    String anAccreditiv_docs,
    String anAddConditions)
    throws com.overstar.ildar.ibank.model.exceptions.InvalidDocumentStatusException {
    super(anId, anClient_id, anDate_doc, anNum_doc, anStatus_doc, anSigners);
    initAccreditiv_type(anAccreditiev_type);
    initPayer(anPayer);
    initAmount(anAmount);
    initRecipient(anRecipient);
    initAccount_40901(anAccount_40901);
    initType_oper(anType_oper);
    initTerm(anTerm);
    initType_accreditiv1(anType_accreditiv1);
    initType_accreditiv2(anType_accreditiv2);
    initCondition_pay(anCondition_Pay);
    initAccreditiv_details(anAccreditiv_details);
    initAccreditiv_docs(anAccreditiv_docs);
    initAdd_condition(anAddConditions);
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 15:27:14)
 * @return java.lang.String
 * @roseuid 3E10274A013B
 */
public String getType() {
	return "���.";
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newAccount_40901 java.lang.String
 */
void initAccount_40901(java.lang.String newAccount_40901) {
	account_40901 = newAccount_40901;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newAccreditiv_details java.lang.String
 */
void initAccreditiv_details(java.lang.String newAccreditiv_details) {
	accreditiv_details = newAccreditiv_details;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newAccreditiv_docs java.lang.String
 */
void initAccreditiv_docs(java.lang.String newAccreditiv_docs) {
	accreditiv_docs = newAccreditiv_docs;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newAccreditiv_type java.lang.String
 */
void initAccreditiv_type(java.lang.String newAccreditiv_type) {
	accreditiv_type = newAccreditiv_type;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newAdd_condition java.lang.String
 */
void initAdd_condition(java.lang.String newAdd_condition) {
	add_condition = newAdd_condition;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newAmount com.overstar.ildar.ibank.model.Money
 */
void initAmount(com.overstar.ildar.ibank.model.Money newAmount) {
	amount = newAmount;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newCondition_pay java.lang.String
 */
void initCondition_pay(java.lang.String newCondition_pay) {
	condition_pay = newCondition_pay;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @param newPayer com.overstar.ildar.ibank.model.BusinessPartner
 */
void initPayer(com.overstar.ildar.ibank.model.BusinessPartner newPayer) {
	payer = newPayer;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @param newRecipient com.overstar.ildar.ibank.model.BusinessPartner
 */
void initRecipient(com.overstar.ildar.ibank.model.BusinessPartner newRecipient) {
	recipient = newRecipient;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @param newTerm java.sql.Date
 */
void initTerm(java.sql.Date newTerm) {
	term = newTerm;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @param newType_accreditiv1 java.lang.String
 */
void initType_accreditiv1(java.lang.String newType_accreditiv1) {
	type_accreditiv1 = newType_accreditiv1;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @param newType_accreditiv2 java.lang.String
 */
void initType_accreditiv2(java.lang.String newType_accreditiv2) {
	type_accreditiv2 = newType_accreditiv2;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @param newType_oper java.lang.String
 */
void initType_oper(java.lang.String newType_oper) {
	type_oper = newType_oper;
}
/**
 * Starts the application.
 * @param args an array of command-line arguments
 */
public static void main(java.lang.String[] args) {
	// Insert code to start the application here.
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return java.lang.String
 */
public java.lang.String rtAccount_40901() {
	return account_40901;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return java.lang.String
 */
public java.lang.String rtAccreditiv_details() {
	return accreditiv_details;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return java.lang.String
 */
public java.lang.String rtAccreditiv_docs() {
	return accreditiv_docs;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return java.lang.String
 */
public java.lang.String rtAccreditiv_type() {
	return accreditiv_type;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return java.lang.String
 */
public java.lang.String rtAdd_condition() {
	return add_condition;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return com.overstar.ildar.ibank.model.Money
 */
public com.overstar.ildar.ibank.model.Money rtAmount() {
	return amount;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return java.lang.String
 */
public java.lang.String rtCondition_pay() {
	return condition_pay;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return com.overstar.ildar.ibank.model.BusinessPartner
 */
public com.overstar.ildar.ibank.model.BusinessPartner rtPayer() {
	return payer;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:41)
 * @return com.overstar.ildar.ibank.model.BusinessPartner
 */
public com.overstar.ildar.ibank.model.BusinessPartner rtRecipient() {
	return recipient;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @return java.sql.Date
 */
public java.sql.Date rtTerm() {
	return term;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @return java.lang.String
 */
public java.lang.String rtType_accreditiv1() {
	return type_accreditiv1;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @return java.lang.String
 */
public java.lang.String rtType_accreditiv2() {
	return type_accreditiv2;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:51:42)
 * @return java.lang.String
 */
public java.lang.String rtType_oper() {
	return type_oper;
}
/**
 * Insert the method's description here.
 * Creation date: (12.02.2003 16:57:43)
 * @return java.lang.String
 */
public String toString() {
    return "Accreditive ("
        + super.toString()
        + " Amount ("
        + rtAmount()
        + ")"
        + ".\n "
        + " Payer ("
        + rtPayer()
        + ")"
        + ".\n "
        + " Recipient ("
        + rtRecipient()
        + ")"
        + ".\n ";
}
}
