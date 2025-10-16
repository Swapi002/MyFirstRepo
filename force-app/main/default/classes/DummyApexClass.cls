public with sharing class DummyApexClass {
    
    // Simple method to return greeting message
    public static String getGreeting(String name) {
        if (String.isBlank(name)) {
            return 'Hello, Guest!';
        } else {
            return 'Hello, ' + name + '!';
        }
    }

    // Simple method to add two numbers
    public static Integer addNumbers(Integer num1, Integer num2) {
        if (num1 == null) num1 = 0;
        if (num2 == null) num2 = 0;
        return num1 + num2;
    }

    // Example method to query accounts
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Phone FROM Account LIMIT 5];
    }
}