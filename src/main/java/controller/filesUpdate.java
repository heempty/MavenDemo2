package controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("filesUpload/")
public class filesUpdate {
	
	@RequestMapping(value="file.do",method={RequestMethod.POST})
	public void fileUpdate(@RequestParam("file")MultipartFile file, HttpServletRequest request, HttpServletResponse response) {
		
		if (file != null) {
			//上传文件路径
			String path = "G:/file";
			System.out.println("path--->>"+path);
			//上传文件名
			String fileName = file.getOriginalFilename();
			File filePath = new File(path,fileName);
			System.out.println("filePath-->>"+filePath);
			//判断路径是否存在，如果不存在就创建一个
			if (!filePath.getParentFile().exists()) {
				filePath.getParentFile().mkdirs();
			}
			//将上传文件保存到一个目标文件当中
			try {
				file.transferTo(new File(path+File.separator+fileName));
				System.out.println("上传完成！");
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		toPage(request,response);
	}
	
	@RequestMapping(value="multipart.do",method={RequestMethod.POST})
	public void multipart(HttpServletRequest request, HttpServletResponse response) {
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
		//上传文件路径
		String path = "G:/file";
		System.out.println("path--->>"+path);
		
		String fileName = "";
		try {
			for (Map.Entry<String, MultipartFile> entity  : fileMap.entrySet()) {
				MultipartFile mFile = entity.getValue();
				fileName = mFile.getOriginalFilename();
				
				File file = new File(path,fileName.toString());
				if (!mFile.isEmpty()) {
					mFile.transferTo(new File(path+File.separator+fileName));
					System.out.println("上传完成！");
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		try {
			response.sendRedirect(request.getContextPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="toindex.do")
	public ModelAndView toPage(HttpServletRequest request, HttpServletResponse response) {
		System.err.println("页面转跳。。。。");
		return new ModelAndView("index2");
	}
}
