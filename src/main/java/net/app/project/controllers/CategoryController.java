package net.app.project.controllers;

import net.app.project.models.Category;
import net.app.project.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
    @GetMapping
    public String category(ModelMap model) {
        List<Category> categories = categoryService.findAll();
        model.addAttribute("listCategory", categories);
        return "admin/category";
    }


    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String addCategory(ModelMap model){
        model.addAttribute("cate",new Category());
        return "admin/add-category";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addCategory(Category category){
        categoryService.save(category);
        return "redirect:/admin/category";
    }
}
