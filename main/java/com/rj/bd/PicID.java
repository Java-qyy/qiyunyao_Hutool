package com.rj.bd;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import cn.hutool.core.lang.Console;


@SuppressWarnings("serial")
public class PicID extends HttpServlet{
	Email email=new Email();
	
	@Override
	protected void service(HttpServletRequest request , HttpServletResponse response ) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		System.out.println(123);
		
		if(method.equals("yzm")){
			this.yanZhengMa(request,response);
		}else if(method.equals("yx")){
			this.youXiang(request,response);
		}
	}

	

	/**
	 * @desc    邮箱
	 * @param request
	 * @param response
	 */
	private void youXiang(HttpServletRequest request, HttpServletResponse response) {
		email.email();
		
	}

	
	
	/**
	 * @desc    图片验证码
	 * @param request
	 * @param response
	 * @throws IOException
	 */
	private void yanZhengMa(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println(123);
		String yzm_nr = picYZM();
		System.out.println("yzm_nr : "+yzm_nr);
		PrintWriter out = response.getWriter() ;
		  out.write(yzm_nr);
	
		   out.flush();
		   out.close();
		 
	}
	
	
	
	
	public static String picYZM(){
		//定义图形验证码的长和宽
		LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(200, 100);

		//图形验证码写出，可以写出到文件，也可以写出到流
		lineCaptcha.write("D:/java2020/java02/qiyunyao_Hutool/src/main/webapp/imgs/pic.png");
		//输出code
		Console.log(lineCaptcha.getCode());
		//验证图形验证码的有效性，返回boolean值
		lineCaptcha.verify("1234");

		return lineCaptcha.getCode();
	}
}
