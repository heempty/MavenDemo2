package alipayconfig;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016091400509043";

	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCFsYKU5ojKWZ9U+SGQLpam8l+Dl10k6c80OOEeAoIHzUw7vQYbXdfmqFYJU2E9FRGQuHsfjdQHooMelmPkAsTQGmJ0m/TDuGmHtkoS+tD5liGvRYoGsEH1iWYff/wIaYOQz2p58aNZdfofr3vwby5+AVvUReUnWPW5ejtMCn+40zTCW/1fxplBcd4asGtRquGlp4K5LXAPv+bMamppBfWE3E7tsE3T8DCcvaWm3yLzLTBFB5WIFQEbMXVMX2dvXXNiTZqUebcwwl3OJzNsxiytlE37CxKXpIfO6fqvL3Tr/POvKrftNQ7MITtubTAisCKPc/5DVH3daJ/+/GyJ6ixnAgMBAAECggEAK7RLq8FxFjUWEQEgJ7ITLaAt+SaSHG8SfU/ax6SqPUKvmRfB11BmM9DzzziioQUyKM0l8rq6hYRquKURIoiFLkJxzQzuhszSMrs0m9/CUNTzTgi9hlI4Pbwc1k9QZK+Zgs1LUXHcpHIcwh7rtT2jRS3MhygSMTqzmV6L49/KwPBRLurmCeotL51Tb987wbtgH+XjjGGv4NIOkTVyFr2UDqiXubjsYWDEa9n647zDCwbhygH2f0q1NTs1YrpopuJ5VYhbGwOTZiIaakstapFr4FyOvEMkKw71/BVug0tORYWZV50d5FKXcDbx+mHcf9o6CwB15o9G5x9VjsQSCjdFAQKBgQDE01xGldc6wIbbse+Wm7L4DoLAYJtDqKrl0YHhDTgxAcQtGPZYmjz04dhbbpaFUgy8o3loA79m4JeVf5EaVNJYSnpGuGgUtDXitMCTL9/hHlZiqOhsgddorkagtG3turdTfA6753wT9QJkIPKWNtqUTM8EWXrmbHSP8JRtXI6HrwKBgQCt4zEsHtHXaIL3i4R3yDy3vziZ+nG3XbDUNAaDejThPDQpEYQpS+WjM++5hKrOGRLqWQzt1iXxaT7u7bFLv/qQxNR3kklKCrn6FzsiXi4ayRIl6PW27mEWlVE0l/xlJrXdy5mHYXydgd7EW/aZhLQrvH8cPkr+/QTtSGmEQ52cyQKBgDMQjxE1EOkKSDK5gGp3rMAUq7GTntS37ta/O04TKu/0AFye7FLieUwjSAm4sE6YkftjAj2NM1xSiqFbvl6xgP0tHXo5n683bf+KW6gUNKZoQ4tHPT3hlexvwp0xEpAp8CQ1vHDdxuA6ocsujSGRy7XME62SNYOQwdESXr/c0pG7AoGAJVr8Uk0gqVTzZbicMZtbp+G1iCasTUccWMoAaDhVqdlkHzp7GOAMKh5bLpCYnQP3805EH8f0iMMiWPPJNcu9SWJvfmx3wCdDwr1A3+Y5o1l0w54jQzQ8uTxEoLbR6u0A/u/hQJspyTCAKdDTzjEa/5ZT/D5JoDO83jjDKj3YWzkCgYBVGJfEW/lkLM14Qq4sCEEGUuekZIipFd46wkZ0CaXL3BqFCV6mof3ySyLPwKGC4bYow1dYzCOp6BAyvkRpHjUUhd9X95YAfcv+UuV61Euy+efQVHLK7YU4iPpPWqacwCLQoTCdEbd2pVlXIHDnu6qVViGlFwtzn72WMnFbtse9LA==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp31wsibXp7tv8vPT9CeX8mpQGo56TIW+GDyVoWH2/aXsfKFKaOewb5PvrGtLTe3wmMwxkfVsT5E7x3nN6XCBCyvw0T0ND8jacD6b3GMvYbZUJVZfTjMzvBxS31YMJgCrPj4L5f/3MwHRBynzscWz99zEP50CE9RDI9y48uYUeGcPUKZNd2XGJq1S37o0P2YocPidIGv+qwoP3upn8efAm9I8PZPA9xga8o7rjufl3tBmoEkK3QpBu466cfBYO/U2S0C6Ox+/slMA4CahwMKd4X5odjdqmD4uSPu1ykEcpoN76dwiWBBOifxJnYR/gUFwigrG7rmecAgwcFhd3jNchQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/alipayForJavaDemo/notify_url.jsp";

	// 支付成功后转跳回商家的页面路径
	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
//	public static String return_url = "http://工程公网访问地址/alipayForJavaDemo/return_url.jsp";
	public static String return_url = "http:www.baidu.com";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
//	public static String gatewayUrl = "https://openapi.alipay.com/gateway.do";
	// 沙箱地址
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

	// 支付宝网关
	public static String log_path = "G:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

