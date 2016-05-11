package kz.tezdet.lessons.controllers;

import kz.tezdet.lessons.models.Employee;
import kz.tezdet.lessons.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class DataController {
    @Autowired
    DataService dataService ;

    @RequestMapping(value = "form", method = RequestMethod.GET)
    public ModelAndView getForm(@ModelAttribute Employee employee){
        return new ModelAndView("form") ;
    }
    @RequestMapping(value = "register", method = RequestMethod.POST)
    public ModelAndView registerUser(@ModelAttribute Employee employee) {
        dataService.insertRow(employee);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping(value = "list", method = RequestMethod.GET)
    public ModelAndView getList() {
        List employeeList = dataService.getList();
        return new ModelAndView("list", "employeeList", employeeList);
    }

    @RequestMapping(value = "delete", method = RequestMethod.GET)
    public ModelAndView deleteUser(@RequestParam int id) {
        dataService.deleteRow(id);
        return new ModelAndView("redirect:list");
    }

    @RequestMapping(value = "edit", method = RequestMethod.GET)
    public ModelAndView editUser(@RequestParam int id,
                                 @ModelAttribute Employee employee) {
        Employee employeeObject = dataService.getRowById(id);
        return new ModelAndView("edit", "employeeObject", employeeObject);
    }

    @RequestMapping(value = "update", method = RequestMethod.POST)
    public ModelAndView updateUser(@ModelAttribute("employee") Employee employee) {
        dataService.updateRow(employee);
        return new ModelAndView("redirect:list");
    }
}
