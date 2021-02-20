package com.rj.bd;

import cn.hutool.extra.mail.MailUtil;
/**
 * @desc     发邮箱
 * @author 齐云尧
 * @time     2020.2.18
 */
public class Email {

	public void email(){
		MailUtil.send("1035117515@qq.com", "测试", "邮件来自Hutool测试", false);
	}
}
