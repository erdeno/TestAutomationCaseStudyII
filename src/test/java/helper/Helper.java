package helper;

import java.util.Random;

public class Helper {

    public static String createRandomString() {
        // I found this solution from stack overflow
        // https://stackoverflow.com/questions/20536566/creating-a-random-string-with-a-z-and-0-9-in-java
        String SALTCHARS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 10) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }

    public static String createMail() {
        return createRandomString() + "@gmail.com";
    }

    public static Integer createNumber() {
        Random rand = new Random();

        // Obtain a number between [0 - 49].
        int n = rand.nextInt(100000000);

        return n;
    }

    public static String createPhoneNumber() {
        return String.valueOf(createNumber());
    }
}
