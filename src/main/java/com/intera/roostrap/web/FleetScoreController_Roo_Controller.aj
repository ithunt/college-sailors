// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.intera.roostrap.web;

import com.iancodes.collegesailors.model.FleetScore;
import com.intera.roostrap.web.FleetScoreController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect FleetScoreController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String FleetScoreController.create(@Valid FleetScore fleetScore, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, fleetScore);
            return "fleetscores/create";
        }
        uiModel.asMap().clear();
        fleetScore.persist();
        return "redirect:/fleetscores/" + encodeUrlPathSegment(fleetScore.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String FleetScoreController.createForm(Model uiModel) {
        populateEditForm(uiModel, new FleetScore());
        return "fleetscores/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String FleetScoreController.show(@PathVariable("id") String id, Model uiModel) {
        uiModel.addAttribute("fleetscore", FleetScore.findFleetScore(id));
        uiModel.addAttribute("itemId", id);
        return "fleetscores/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String FleetScoreController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("fleetscores", FleetScore.findFleetScoreEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) FleetScore.countFleetScores() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("fleetscores", FleetScore.findAllFleetScores(sortFieldName, sortOrder));
        }
        return "fleetscores/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String FleetScoreController.update(@Valid FleetScore fleetScore, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, fleetScore);
            return "fleetscores/update";
        }
        uiModel.asMap().clear();
        fleetScore.merge();
        return "redirect:/fleetscores/" + encodeUrlPathSegment(fleetScore.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String FleetScoreController.updateForm(@PathVariable("id") String id, Model uiModel) {
        populateEditForm(uiModel, FleetScore.findFleetScore(id));
        return "fleetscores/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String FleetScoreController.delete(@PathVariable("id") String id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        FleetScore fleetScore = FleetScore.findFleetScore(id);
        fleetScore.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/fleetscores";
    }
    
    void FleetScoreController.populateEditForm(Model uiModel, FleetScore fleetScore) {
        uiModel.addAttribute("fleetScore", fleetScore);
    }
    
    String FleetScoreController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
