package net.app.project.controllers;

import net.app.project.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cart")
public class CartController {


    @Autowired
    private CartService cartService;

    @GetMapping
    public String cart(ModelMap modelMap) {
        return "client/cart";
    }

}
