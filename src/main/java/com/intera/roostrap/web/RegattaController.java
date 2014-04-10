package com.intera.roostrap.web;
import com.iancodes.collegesailors.model.Regatta;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/regattas")
@Controller
@RooWebScaffold(path = "regattas", formBackingObject = Regatta.class)
public class RegattaController {
}
