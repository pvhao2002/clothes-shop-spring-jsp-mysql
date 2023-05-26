package net.app.project.controllers;


import net.app.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class HomeAdminController {

    @Autowired
    private UserService userService;
    @GetMapping
    public String index() {
        return "admin/index";
    }


    @GetMapping("/account")
    public String account(Model model) {
        model.addAttribute("listUser", userService.findAll());
        return "admin/account";
    }
}
