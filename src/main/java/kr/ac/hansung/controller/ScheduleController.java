package kr.ac.hansung.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ac.hansung.model.Schedule;
import kr.ac.hansung.service.ScheduleService;

@Controller
public class ScheduleController {

	@Autowired
	private ScheduleService scheduleService;
	
	@RequestMapping(value="/admin/buildings/schedules/{number}",method=RequestMethod.GET)
	public String getSchedules(@PathVariable int number, Model model) {
		
		List<Schedule> schedules = scheduleService.getSchedules(number);
		model.addAttribute("schedules", schedules);
		return "schedules";
		
	}

}
