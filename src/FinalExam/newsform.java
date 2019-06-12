package FinalExam;

import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class newsform {
   static Finalexamm sfrom = new Finalexamm();
   public static void main(String[] args){
      Elements element = sfrom.news();
       String title = element.select("h2").text().substring(0, 4);
       
           System.out.println("============================================================");
           System.out.println(title);
           System.out.println("============================================================");
            
           for(Element el : element.select("li")) {    // 하위 뉴스 기사들을 for문 돌면서 출력
               System.out.println(el.text());
           }
            
           System.out.println("============================================================");
   }
   
}