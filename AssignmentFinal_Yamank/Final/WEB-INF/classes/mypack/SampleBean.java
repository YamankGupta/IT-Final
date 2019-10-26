package mypack;
 
public class SampleBean {
     
    private String userName;
    private String id;
    private String birthDate;
    private String email;
    private String gender;
    private String productName;
    private String expiryDate;
    private boolean userNameIsValid=true;
    private boolean birthDateIsValid=true;
    private boolean emailIsValid=true;
    private boolean productNameIsValid=true;
    private boolean expiryDateIsValid=true;
    private boolean idIsValid=true;
    public SampleBean()
    {
        
    }
    public boolean getEmailIsValid() {
        return this.emailIsValid;
    }
    public boolean getIdIsValid() {
        return this.idIsValid;
    }
    public boolean getExpiryDateIsValid() {
        return this.expiryDateIsValid;
    }

    public boolean getUserNameIsValid() {
        return this.userNameIsValid;
    }
    public boolean getProductNameIsValid() {
        return this.productNameIsValid;
    }

    public boolean getBirthDateIsValid() {
        return this.birthDateIsValid;
    }

    public String getUserName() {
        return this.userName;
    }
    public String getId() {
        return this.id;
    }
    public String getProductName() {
        return this.productName;
    }
    public String getExpiryDate() {
        return this.expiryDate;
    }
    public void setUserName(String param1) {
        this.userName = param1;
        for(int i=0;i<userName.length();++i)
        {
          if(Character.isLetter(userName.charAt(i)))
          ;
          else if(userName.charAt(i)==32)
          ;
          else
          {
              this.userNameIsValid=false;
              break;
          }
    }}

    public void setproductName(String param1) {
        this.productName = param1;
        for(int i=0;i<productName.length();++i)
        {
          if(Character.isLetter(productName.charAt(i)))
          ;
          else
          {
              this.productNameIsValid=false;
              break;
          }
    }}
    
    public void setId(String param1) {
        this.id = param1;
        for(int i=0;i<id.length();++i)
        {
          if(Character.isDigit(id.charAt(i)) && id.length()==4)
          ;
          else
          {
              this.idIsValid=false;
              break;
          }
    }}


    public String getBirthDate() {
        return this.birthDate;
    }
    public void setBirthDate(String param1) {
        this.birthDate = param1;
        for(int i=0;i<birthDate.length();++i)
          if(!(Character.isDigit(birthDate.charAt(i))||birthDate.charAt(i)=='-'))
          {
              this.birthDateIsValid=false;
              break;
          }
        String s=this.birthDate.substring(0,4);
        int n=Integer.parseInt(s);
        if(n>2010)
           this.birthDateIsValid=false;
        s=this.birthDate.substring(5,7);
        n=Integer.parseInt(s);
        if(n>12||n<1)
        this.birthDateIsValid=false;
        s=this.birthDate.substring(8);
        n=Integer.parseInt(s);
        if(n>31||n<1)
        this.birthDateIsValid=false;
        

    }

    public void setExpiryDate(String param1) {
        this.expiryDate = param1;
        for(int i=0;i<expiryDate.length();++i)
          if(!(Character.isDigit(expiryDate.charAt(i))||expiryDate.charAt(i)=='-'))
          {
              this.expiryDateIsValid=false;
              break;
          }
        String s=this.expiryDate.substring(0,4);
        int n=Integer.parseInt(s);
        if(n>2010)
           this.expiryDateIsValid=false;
        s=this.expiryDate.substring(5,7);
        n=Integer.parseInt(s);
        if(n>12||n<1)
        this.expiryDateIsValid=false;
        s=this.expiryDate.substring(8);
        n=Integer.parseInt(s);
        if(n>31||n<1)
        this.expiryDateIsValid=false;
        

    }



    public String getEmail() {
        return this.email;
    }
    public void setEmail(String param1) {
        this.email = param1;
        if(email.length()!=0){
        int i;
        for(i=0;i<email.length();++i)
        {
            if(email.charAt(i)=='@')
            break;
        }
        if(i!=email.length()){

        String s[]={"gmail.com","company.com"};
        int j;
        for(j=0;j<s.length;++j)
        {
            if(email.substring(i+1).compareTo(s[j])==0)
            break;

        }
        if(j==s.length)
        {
            this.emailIsValid=false;
        }
    }
    else
    this.emailIsValid=false;

    }

    }

    public String getGender() {
        return this.gender;
    }
    public void setGender(String param1) {
        this.gender = param1;
    }

 
}
