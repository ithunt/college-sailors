package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.Team;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Team.class)
@Controller
@RequestMapping("/teams")
public class TeamController {
}
