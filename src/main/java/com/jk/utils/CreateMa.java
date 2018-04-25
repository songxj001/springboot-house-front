package com.jk.utils;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class CreateMa {

    public static Map createMa(String ss) throws WriterException, IOException {

        HashMap<String,Object> map = new HashMap<String,Object>();
        try {
            System.out.println("二维码展示给前台");
            String filePath = "D:\\javaxml\\photo-tomcat\\apache-tomcat-7.0.35\\webapps\\ROOT";
            String fileName = "zxing"+ UUID.randomUUID().toString()+".png";
            String content = ss;
            int width = 300; // 图像宽度
            int height = 300; // 图像高度
            String format = "png";// 图像类型
            Map<EncodeHintType, Object> hints = new HashMap<EncodeHintType, Object>();
            hints.put(EncodeHintType.CHARACTER_SET, "UTF-8");
            BitMatrix bitMatrix = new MultiFormatWriter().encode(content, BarcodeFormat.QR_CODE, width, height, hints);// 生成矩阵

          /*  OssClienUtils ossClient = new OssClienUtils();
            String keyName = ossClient.uploadImg2Oss(file,"img");
            String imgUrl = ossClient.getImgUrl(keyName);
            System.out.println(imgUrl);*/

            Path path = FileSystems.getDefault().getPath(filePath, fileName);
            MatrixToImageWriter.writeToPath(bitMatrix, format, path);// 输出图像
            map.put("flag",true);

        }catch (Exception e){
            e.printStackTrace();
            map.put("flag",false);
        }

        return map;
    }

    }
