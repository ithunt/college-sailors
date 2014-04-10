package com.iancodes.collegesailors.rest;
import com.iancodes.collegesailors.model.Regatta;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebJson(jsonObject = Regatta.class)
@Controller
@RequestMapping("/regattas")
public class RegattaController {
}
