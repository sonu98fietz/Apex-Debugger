public with sharing class currentUserInfo {

    @AuraEnabled
    public static list<User> fetchUser(){
      list<User> Usermain = [select id,Name,Email,IsActive FROM User where id =: userInfo.getUserId() ];
        return Usermain;
    }
}