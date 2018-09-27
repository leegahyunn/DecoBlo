public class test {
	public static void main(String[] args) {
		StringBuffer html = new StringBuffer();
		html.append("<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\"%>");
		html.append("<!DOCTYPE html>"); 
		html.append("<html>"); 
		html.append("<head>"); 
		html.append("<title>Untitled</title>"); 
		html.append("<meta charset=\"utf-8\" />"); 
		html.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />"); 
		html.append("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.2.0/css/all.css\" />"); 
		html.append("<link rel=\"stylesheet\" href=\"/www/templates/common.css\" />"); 
		html.append("<link rel=\"stylesheet\" href=\"/www/templates/template.css\" />"); 
		html.append("</head>"); 
		html.append("<body>"); 
		html.append("<section class=\"menu-wrapper\">"); 
		html.append("	<!-- 메뉴 블록, block-1 -->"); 
		html.append("	<section class=\"block-wrapper\" style=\"\">"); 
		html.append("		<div class=\"block-1\">"); 
		html.append(""); 
		html.append("		</div>"); 
		html.append("	</section>"); 
		html.append("</section>"); 
		html.append("");
		
		html.append("<!-- Scripts -->"); 
		html.append("<script src=\"/www/resources/library/js/jquery-3.3.1.min.js\"></script>"); 
		html.append("<script src=\"/www/decoblo/js/index.js\"></script>"); 
		html.append("<script src=\"/www/templates/slides.min.jquery.js\"></script>"); 
		html.append(""); 
		
		html.append("<!-- Script Import -->"); 
		html.append(""); 
		html.append("</body>"); 
		html.append("</html>");
		
		System.out.println(html.toString());
	}
}
