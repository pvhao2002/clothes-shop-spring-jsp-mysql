package net.app.project.controllers;

import net.app.project.models.Cart;
import net.app.project.models.CartItem;
import net.app.project.models.Product;
import net.app.project.models.User;
import net.app.project.service.CartItemService;
import net.app.project.service.CartService;
import net.app.project.service.ProductService;
import net.app.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    private ProductService productService;
    @Autowired
    private CartService cartService;

    @Autowired
    private CartItemService cartItemService;

    @Autowired
    private UserService userService;

    @GetMapping
    public String cart(ModelMap modelMap) {
        User u = getCurrentUser();
        if (u != null) {
            modelMap.addAttribute("user", u);
            Cart cart = cartService.findByUser(u);
            if (cart != null) {
                modelMap.addAttribute("cart", cartItemService.findAllByCart(cart));
                modelMap.addAttribute("total", cart.getTotalPrice());
            }
            return "client/cart";
        }else{
            return "redirect:/login";
        }
    }

    public User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return userService.findByUsername(authentication.getName());
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(@RequestParam("pId") int id, ModelMap modelMap) {
        User u = getCurrentUser();
        if (u != null) {
            modelMap.addAttribute("user", u);
            Cart cart = cartService.findByUser(u);
            if (cart == null) {
                cart = new Cart();
                cart.setUser(u);
            }
            Product p = productService.findById(id);
            CartItem cartItem = cartItemService.findByProduct(p);
            if (cartItem == null) {
                cartItem = new CartItem();
                cartItem.setCart(cart);
                cartItem.setProduct(p);
                cartItem.setQuantity(1);
                cartItem.setTotalPrice(p.getPrice());
            } else {
                cartItem.setQuantity(cartItem.getQuantity() + 1);
                cartItem.setTotalPrice(cartItem.getTotalPrice() + p.getPrice());
            }
            cart.setTotalPrice(cart.getTotalPrice() + p.getPrice());
            cartService.save(cart);
            cartItemService.save(cartItem);
            return "redirect:/cart";
        } else {
            return "redirect:/login";
        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.GET)
    public String remove(@RequestParam("id") int id) {
        User u = getCurrentUser();
        if (u != null) {
            Cart cart = cartService.findByUser(u);
            cart.setTotalPrice(cart.getTotalPrice() - cartItemService.findById(id).getTotalPrice());
            cartService.save(cart);
            cartItemService.deleteById(id);
        }
        return "redirect:/cart";
    }


    @RequestMapping(value = "checkout", method = RequestMethod.GET)
    public String checkout(ModelMap modelMap) {
        User u = getCurrentUser();
        if (u != null) {
            modelMap.addAttribute("user", u);
            Cart cart = cartService.findByUser(u);
            if (cart != null) {
                modelMap.addAttribute("cart", cartItemService.findAllByCart(cart));
                modelMap.addAttribute("total", cart.getTotalPrice());
            }
            return "client/checkout";
        }else{
            return "redirect:/login";
        }
    }


    @RequestMapping(value = "payment", method = RequestMethod.GET)
    public String payment(ModelMap modelMap) {
        return "redirect:/";
    }
}
