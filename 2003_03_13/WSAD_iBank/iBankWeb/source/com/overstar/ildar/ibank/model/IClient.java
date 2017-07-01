package com.overstar.ildar.ibank.model;

import java.math.*;
import java.sql.Date;
import java.util.Vector;
import com.overstar.ildar.ibank.model.references.Recipient;
import com.overstar.ildar.ibank.model.accounts.*;
import com.overstar.ildar.ibank.model.documents.*;
import com.overstar.ildar.ibank.model.exceptions.InvalidPINException;
/**
 * Insert the type's description here.
 * Creation date: (11.09.2002 14:25:35)
 * @author: Shafigullin Ildar
 */
public class IClient {

    /**
     * PrimaryKey class to be used for instances of type IClient.
     */
    public static class IClientPK extends PrimaryKey {

        /**
         * @param anId
         * @roseuid 3E0041A70190
         */
        public IClientPK(String anId) {
            super(anId);
        }
    }
    //'������������� �������';
    private IClient.IClientPK client_id;

    //'��� �������';
    private String inn_cln;

    //'���� �������';
    private String okpo;

    //'������������ �������';
    private String name_cln;

    //'�.�.�. �������������� ���� � �������';
    private String fio_cln;

    //'������� �������';
    private String phone_cln;

    //'���� �������';
    private String fax_cln;

    //'E-mail �������';
    private String email_cln;

    //'����� �������';
    private String addr_cln;

    //'����� �������� ����� � �������� �� ���';
    private String num_dogov;

    //'���� ����������� ������� � ���';
    private Date reg_date;

    /**'����� ������� (13 ����������� ����):
    *1 ��� - ������� �������
    *2 ��� - ������� �������
    *3 ��� - ������
    *4 ��� - �������� �������
    *5 ��� - ��������� �� �������
    *6 ��� - ��������� �� ������������ �������
    *7 ��� - ������ �� ������� ������ ';
    *8 ��� - ������ �� ������� ������
    *9 ��� - ��������� ����������
    *10 ��� - ����������� 
    *11 ��� - ���������� ���������
    *12 ��� - ��������� �� ������ �� �������
    *13 ��� - ��������� �� �������� ������� ������';
    */
    private String perms = "0";

    //'������������� ����� ��� ������������ ������� �� ��������';
    private String lock_word;

    //'������������ ������� �� ���������� �����';
    private String ordering_customer;

    /**'������ �������:
    *0 - ������
    *1 - ������������
    *2 - �������';
    */
    private Integer status = new Integer(1);

    /**'��� �������:
    *1 - ���������� ���� 
    *0 - ����������� ����';
    */
    private String cln_type;

    //'��� (��� ���������� �� ����)';
    private String kpp;

    /**'����� �������� ��� ���������� ������ ����������. 
    *������������ � ���� ������� �����,
    *��� �� ������ ��� ��������� �������� �� ��� ����.
    *1) �������� ��������� ��������� - 0-2
    *2) ������ - 3-5
    *3) ��������� �� ������� - 6-8
    *4) ��������� �� ������� - 9-11
    *5) ��������� �� ������� - 12-14
    *6) ��������� �� ������. ������� - 15-17
    *�������������� 000 - 1 �������, 001 - 2 ������� � �.�.';
    */
    private String doc_sign_num;

    //'������������� ������� �� ������� �������';
    private String ext_client_id;

    //'��� ������ �������';
    private String country_code;

    //'����� �������������� �������';
    private String city;

    //'����� �������������� ������� �� ����������';
    private String city_latin;

    //'����� ������� �� ���������� �����';
    private String address_latin;

    //'����� �������';
    private String soato;

    //'������� ���������';
    private String resident_flag;

    //PIN �������
    private Integer PIN = new Integer(1);

    //������ ������������(�� ������� �����������)
    private Vector recipientsAll;

    //������ ����������
    private Vector documentsAll;

    //������ ���������� ������
    private Vector bankAccountsAll;
/**
 * Insert the method's description here.
 * Creation date: (12.09.2002 12:23:23)
 * @param anClient_id IClientPK
 * @param anInn_cln java.lang.String
 * @param anOkpo java.lang.String
 * @param anName_cln java.lang.String
 * @param anFio_cln java.lang.String
 * @param anPhone_cln java.lang.String
 * @param anFax_cln java.lang.String
 * @param anEmail_cln java.lang.String
 * @param anAddr_cln java.lang.String
 * @param anNum_dogov java.lang.String
 * @param anReg_date java.sql.Date
 * @param anPerms java.lang.String
 * @param anLock_word java.lang.String
 * @param anOrdering_customer java.lang.String
 * @param anStatus int
 * @param anCln_type java.lang.String
 * @param anKpp java.lang.String
 * @param anDoc_sign_num java.lang.String
 * @param anExt_client_id java.lang.String
 * @param anCountry_codejava.lang.String
 * @param anCity java.lang.String
 * @param anCity_latin java.lang.String
 * @param anAddress_latin java.lang.String
 * @param anSoato java.lang.String
 * @param anResident_flag java.lang.String
 * @param anCountry_code
 * @roseuid 3E0041A10097
 */
public IClient(
    IClient.IClientPK anClient_id,
    String anInn_cln,
    String anOkpo,
    String anName_cln,
    String anFio_cln,
    String anPhone_cln,
    String anFax_cln,
    String anEmail_cln,
    String anAddr_cln,
    String anNum_dogov,
    java.sql.Date anReg_date,
    String anPerms,
    String anLock_word,
    String anOrdering_customer,
    Integer anStatus,
    String anCln_type,
    String anKpp,
    String anDoc_sign_num,
    String anExt_client_id,
    String anCountry_code,
    String anCity,
    String anCity_latin,
    String anAddress_latin,
    String anSoato,
    String anResident_flag) {
    client_id = anClient_id;
    initInn_cln(anInn_cln);
    initOkpo(anOkpo);
    initName_cln(anName_cln);
    initFio_cln(anFio_cln);
    initPhone_cln(anPhone_cln);
    initFax_cln(anFax_cln);
    initEmail_cln(anEmail_cln);
    initAddr_cln(anAddr_cln);
    initNum_dogov(anNum_dogov);
    initReg_date(anReg_date);
    initPerms(anPerms);
    initLock_word(anLock_word);
    initOrdering_customer(anOrdering_customer);
    initStatus(anStatus);
    initCln_type(anCln_type);
    initKpp(anKpp);
    initDoc_sign_num(anDoc_sign_num);
    initExt_client_id(anExt_client_id);
    initCountry_code(anCountry_code);
    initCity(anCity);
    initCity_latin(anCity_latin);
    initAddress_latin(anAddress_latin);
    initSoato(anSoato);
    initResident_flag(anResident_flag);
}
   /**
    * Insert the method's description here.
    * Creation date: (01.11.2002 10:21:10)
    * @return java.util.Vector
    * @roseuid 3E0041A1037C
    */
   public Vector getBankAccountsAll() 
   {
	return bankAccountsAll;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return com.overstar.ildar.ibank.model.IClient.IClientPK
    * @roseuid 3E0041A103CC
    */
   public com.overstar.ildar.ibank.model.IClient.IClientPK getClient_id() 
   {
        return client_id;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (18.10.2002 16:11:02)
    * @return java.util.Vector
    * @roseuid 3E0041A200CA
    */
   public Vector getDocumentsAll() 
   {
	return documentsAll;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (24.09.2002 16:44:44)
    * @return java.util.Vector
    * @roseuid 3E0041A302D4
    */
   public Vector getRecipientsAll() 
   {
	return recipientsAll;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newAddr_cln java.lang.String
    * @roseuid 3E0041A3036B
    */
   void initAddr_cln(java.lang.String newAddr_cln) 
   {
        addr_cln = newAddr_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newAddress_latin java.lang.String
    * @roseuid 3E0041A3039D
    */
   void initAddress_latin(java.lang.String newAddress_latin) 
   {
    address_latin = newAddress_latin;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newCity java.lang.String
    * @roseuid 3E0041A303D9
    */
   void initCity(java.lang.String newCity) 
   {
    city = newCity;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newCity_latin java.lang.String
    * @roseuid 3E0041A4002D
    */
   void initCity_latin(java.lang.String newCity_latin) 
   {
    city_latin = newCity_latin;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newCln_type java.lang.String
    * @roseuid 3E0041A40069
    */
   void initCln_type(java.lang.String newCln_type) 
   {
    cln_type = newCln_type;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newCountry_code java.lang.String
    * @roseuid 3E0041A4009B
    */
   void initCountry_code(java.lang.String newCountry_code) 
   {
    country_code = newCountry_code;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newDoc_sign_num java.lang.String
    * @roseuid 3E0041A400D7
    */
   void initDoc_sign_num(java.lang.String newDoc_sign_num) 
   {
    doc_sign_num = newDoc_sign_num;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newEmail_cln java.lang.String
    * @roseuid 3E0041A40109
    */
   void initEmail_cln(java.lang.String newEmail_cln) 
   {
    email_cln = newEmail_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newExt_client_id java.lang.String
    * @roseuid 3E0041A40145
    */
   void initExt_client_id(java.lang.String newExt_client_id) 
   {
    ext_client_id = newExt_client_id;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newFax_cln java.lang.String
    * @roseuid 3E0041A40181
    */
   void initFax_cln(java.lang.String newFax_cln) 
   {
    fax_cln = newFax_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newFio_cln java.lang.String
    * @roseuid 3E0041A401BE
    */
   void initFio_cln(java.lang.String newFio_cln) 
   {
    fio_cln = newFio_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newInn_cln java.lang.String
    * @roseuid 3E0041A4020E
    */
   void initInn_cln(java.lang.String newInn_cln) 
   {
    inn_cln = newInn_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newKpp java.lang.String
    * @roseuid 3E0041A4024A
    */
   void initKpp(java.lang.String newKpp) 
   {
    kpp = newKpp;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newLock_word java.lang.String
    * @roseuid 3E0041A4027C
    */
   void initLock_word(java.lang.String newLock_word) 
   {
    lock_word = newLock_word;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newName_cln java.lang.String
    * @roseuid 3E0041A402B8
    */
   void initName_cln(java.lang.String newName_cln) 
   {
    name_cln = newName_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newNum_dogov java.lang.String
    * @roseuid 3E0041A402F4
    */
   void initNum_dogov(java.lang.String newNum_dogov) 
   {
    num_dogov = newNum_dogov;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newOkpo java.lang.String
    * @roseuid 3E0041A40330
    */
   void initOkpo(java.lang.String newOkpo) 
   {
    okpo = newOkpo;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newOrdering_customer java.lang.String
    * @roseuid 3E0041A40362
    */
   void initOrdering_customer(java.lang.String newOrdering_customer) 
   {
    ordering_customer = newOrdering_customer;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newPerms java.lang.String
    * @roseuid 3E0041A4039E
    */
   void initPerms(java.lang.String newPerms) 
   {
    perms = newPerms;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newPhone_cln java.lang.String
    * @roseuid 3E0041A403DA
    */
   void initPhone_cln(java.lang.String newPhone_cln) 
   {
    phone_cln = newPhone_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newReg_date java.util.Date
    * @roseuid 3E0041A5002E
    */
   void initReg_date(java.sql.Date newReg_date) 
   {
    reg_date = newReg_date;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newResident_flag java.lang.String
    * @roseuid 3E0041A50060
    */
   void initResident_flag(java.lang.String newResident_flag) 
   {
    resident_flag = newResident_flag;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newSoato java.lang.String
    * @roseuid 3E0041A5009D
    */
   void initSoato(java.lang.String newSoato) 
   {
    soato = newSoato;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @param newStatus int
    * @roseuid 3E0041A500D9
    */
   void initStatus(Integer newStatus) 
   {
    status = newStatus;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A50165
    */
   public String rtAddr_cln() 
   {
    return addr_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A501AB
    */
   public String rtAddress_latin() 
   {
    return address_latin;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A501F1
    */
   public String rtCity() 
   {
    return city;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A50241
    */
   public String rtCity_latin() 
   {
    return city_latin;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A50291
    */
   public String rtCln_type() 
   {
    return cln_type;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A502D7
    */
   public String rtCountry_code() 
   {
    return country_code;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A5031D
    */
   public String rtDoc_sign_num() 
   {
    return doc_sign_num;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A50364
    */
   public String rtEmail_cln() 
   {
        return email_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A503B4
    */
   public String rtExt_client_id() 
   {
    return ext_client_id;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A60012
    */
   public String rtFax_cln() 
   {
    return fax_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A60058
    */
   public String rtFio_cln() 
   {
        return fio_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A6009E
    */
   public String rtInn_cln() 
   {
    return inn_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A600EE
    */
   public String rtKpp() 
   {
    return kpp;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A60134
    */
   public String rtLock_word() 
   {
    return lock_word;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A6017A
    */
   public String rtName_cln() 
   {
        return name_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A601C0
    */
   public String rtNum_dogov() 
   {
    return num_dogov;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A60211
    */
   public String rtOkpo() 
   {
    return okpo;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A60257
    */
   public String rtOrdering_customer() 
   {
    return ordering_customer;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A602A7
    */
   public String rtPerms() 
   {
    return perms;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A602ED
    */
   public String rtPhone_cln() 
   {
    return phone_cln;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.util.Date
    * @roseuid 3E0041A60333
    */
   public Date rtReg_date() 
   {
    return reg_date;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A60379
    */
   public String rtResident_flag() 
   {
    return resident_flag;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return java.lang.String
    * @roseuid 3E0041A603C9
    */
   public String rtSoato() 
   {
    return soato;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 12:35:53)
    * @return int
    * @roseuid 3E0041A70009
    */
   public Integer rtStatus() 
   {
    return status;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (01.11.2002 10:21:10)
    * @param newBankAccountsAll java.util.Vector
    * @roseuid 3E0041A70013
    */
   void setBankAccountsAll(java.util.Vector newBankAccountsAll) 
   {
	bankAccountsAll = newBankAccountsAll;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (18.10.2002 16:11:02)
    * @param newDocumentsAll java.util.Vector
    * @roseuid 3E0041A7004F
    */
   void setDocumentsAll(java.util.Vector newDocumentsAll) 
   {
	documentsAll = newDocumentsAll;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (24.09.2002 16:44:44)
    * @param newRecipientsAll java.util.Vector
    * @roseuid 3E0041A7008B
    */
   void setRecipientsAll(java.util.Vector newRecipientsAll) 
   {
	recipientsAll = newRecipientsAll;    
   }
   /**
    * Returns a String that represents the value of this object.
    * @return a string representation of the receiver
    * @roseuid 3E0041A700FA
    */
   public String toString() 
   {
        // Insert code to print the receiver here.
        // This implementation forwards the message to super. You may replace or supplement this.
        return "\nIClient (" + client_id + ")" + ".\n " + 
        " inn_cln (" + inn_cln + ")" + ".\n " + 
        " okpo  (" + okpo + ")" + ".\n " + 
        " name_cln (" + name_cln + ")" + ".\n " +
        " fio_cln (" + fio_cln + ")" + ".\n " +
        " phone_cln (" + phone_cln + ")" + ".\n " +
        " fax_cln (" + fax_cln + ")" + ".\n " +
        " email_cln (" + email_cln + ")" + ".\n " +
        " addr_cln  (" + addr_cln + ")" + ".\n " +
        " num_dogov  (" + num_dogov + ")" + ".\n " +
        " reg_date  (" + reg_date + ")" + ".\n " +
        " perms  (" + perms + ")" + ".\n " +
        " lock_word  (" + lock_word + ")" + ".\n " +
        " ordering_customer  (" + ordering_customer + ")" + ".\n " +
        " status  (" + status + ")" + ".\n " +
        " cln_type  (" + cln_type + ")" + ".\n " +
        " kpp  (" + kpp + ")" + ".\n " +
        " doc_sign_num  (" + doc_sign_num + ")" + ".\n " +
        " ext_client_id (" + ext_client_id + ")" + ".\n " +
        " country_code (" + country_code + ")" + ".\n " +
        "  city (" + city + ")" + ".\n " +
        "  city_latin(" + city_latin + ")" + ".\n " +
        "  address_latin (" + address_latin + ")" + ".\n " +
        "  soato (" + soato + ")" + ".\n " +
        "  resident_flag (" + resident_flag + ")" + ".\n "  ;    
   }
   /**
    * Insert the method's description here.
    * Creation date: (12.09.2002 18:27:22)
    * @return java.lang.String
    * @roseuid 3E0041A7010E
    */
   public String toStringFull() 
   {
    return "IClient ("
        + getClient_id()
        + ")"
        + ".\n -----------�����:-----------------\n"
        + "AssociatedBankAccounts:"+getBankAccountsAll().size()+"\n"
        + getBankAccountsAll()
        + ".\n ------���������:------------------\n"
        + "AssociatedDocuments:"+getDocumentsAll().size()+"\n"
        + getDocumentsAll()
        + ".\n ------����������:-----------------\n"
        + "AssociatedRecipients:"+getRecipientsAll().size()+"\n"
        + getRecipientsAll();    
   }
   /**
    * Validate the PIN code in the procedure to
    * authenticate the current Person.
    * Creation date: (20.09.2002 12:23:29)
    * @param aPINStr java.lang.String
    * @throws com.overstar.ildar.ibank.model.InvalidPINException
    * @exception com.overstar.ildar.ibank.model.InvalidPINException The exception 
    * description.
    * @roseuid 3E0041A70118
    */
   void validatePIN(String aPINStr) throws InvalidPINException 
   {
	try {
		if (PIN.intValue() != Integer.parseInt(aPINStr)) {
			throw new InvalidPINException("The given PIN is not valid for this IClient.");
		}
	} catch(NumberFormatException ex) {
		throw new InvalidPINException("The given PIN is not valid for this IClient.");
	}    
   }
}
