package codingdojo.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@SpringBootApplication

@Controller

public class MainController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	
	@RequestMapping(value="/post", method=RequestMethod.POST)
	public String login(
		HttpSession session,
		@RequestParam(value ="num") String num,
		@RequestParam(value="city") String city,
		@RequestParam(value ="name") String name,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="thing") String thing,
		@RequestParam(value="say") String say 
			)
	{
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("say", say);
		
		System.out.println(name);
		
		System.out.println(session.getAttribute("name"));
		
		return "redirect:show";
	}
	
	@RequestMapping("/show") 
	public String results(HttpSession session, Model model) {
		
		String currentNum = (String) session.getAttribute("num");
		String currentCity = (String) session.getAttribute("city");
		String currentName = (String) session.getAttribute("name");
		String currentHobby = (String) session.getAttribute("hobby");
		String currentThing = (String) session.getAttribute("thing");
		String currentSay = (String) session.getAttribute("say");
		
		model.addAttribute("num", currentNum);
		model.addAttribute("city", currentCity);
		model.addAttribute("name", currentName);
		model.addAttribute("hobby", currentHobby);
		model.addAttribute("thing", currentThing);
		model.addAttribute("say", currentSay);
		
		
		return "results.jsp";
	}
	
}
