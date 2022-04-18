package web.controller.file;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig(
		fileSizeThreshold = 1024 * 1024, //임시 파일 크기 1MB
		maxFileSize = 1024 * 1024 * 50, //업로드할 때 파일의 최대 크기 50MB
		maxRequestSize = 1024 * 1024 * 50 * 3 //요청시에 최대 크기 150MB
)


@WebServlet("/file-upload")
public class FileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/file/file.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = null;
		Collection<Part> parts = request.getParts();
		StringBuilder builder = new StringBuilder();
		for(Part part : parts) {
			fileName = part.getSubmittedFileName();
			
			InputStream is = part.getInputStream();
			String realPath = request.getServletContext().getRealPath("/static/fileupload");
			File path = new File(realPath);
			if(!path.exists()) {
				path.mkdirs();
			}
			
			String filePath = realPath + File.separator + fileName;
			FileOutputStream fos = new FileOutputStream(filePath);
			int size = 0;
			byte[] buf = new byte[1024];
			while((size = is.read(buf)) != -1) {
				fos.write(buf, 0, size);
			}
			
		}
		
		
	}


}








