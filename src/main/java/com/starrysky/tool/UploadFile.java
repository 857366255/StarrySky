package com.starrysky.tool;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by wz on 2017/9/2.
 */
public class UploadFile {

    public static String UploadSinglePicture(String storPathRoot, MultipartFile file){
        String path="";
        //判断文件是否为空
        System.out.println("1");
        if(!file.isEmpty()){
            System.out.println("2");
            //生成uuid作为文件名称
            String uuid = UUID.randomUUID().toString().replaceAll("-","");
            //获得文件类型（可以判断如果不是图片，禁止上传）
            String contentType=file.getContentType();
            //获得文件后缀名称
            String imageName=contentType.substring(contentType.indexOf("/")+1);
            path="/images/"+uuid+"."+imageName;
            try {
                file.transferTo(new File(storPathRoot+path));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println("3");
        return null;
    }

    public String[] UploadMultiplePicture(MultipartFile[] files){

        return null;
    }

}
