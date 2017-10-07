package com.starrysky.tool;

import sun.misc.BASE64Encoder;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by wz on 2017/8/22.
 */
public class MD5 {
    /**利用MD5进行加密*/
    public static String EncoderByMd5(String str){
        //确定计算方法
        MessageDigest md5 = null;
        String newstr = null;
        try {
            md5 = MessageDigest.getInstance("MD5");
            BASE64Encoder base64en = new BASE64Encoder();
            //加密后的字符串
            newstr = base64en.encode(md5.digest(str.getBytes("utf-8")));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return newstr;
    }

    /**判断用户密码是否正确
     *newpasswd  用户输入的密码
     *oldpasswd  正确密码*/
    public static boolean checkpassword(String newpasswd,String oldpasswd) {
        if(EncoderByMd5(newpasswd).equals(oldpasswd))
            return true;
        else
            return false;
    }
}
