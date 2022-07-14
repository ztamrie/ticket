<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%
               String paths="C:/Users/Tigist/Documents/NetBeansProjects/project/web/file.txt"; 


                File fileObject = new File(paths);

                char data[] = new char[(int) fileObject.length()];
                FileReader filereader = new FileReader(paths);

                int charsread = filereader.read(data);
                out.println(new String(data, 0 , charsread));

                filereader.close();
            %>