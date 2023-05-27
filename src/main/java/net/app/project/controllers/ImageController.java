package net.app.project.controllers;

import net.app.project.models.Image;
import net.app.project.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping("/admin/image")
public class ImageController {

    private final String path = "/web/images/";
    @Autowired
    private ImageService imageService;

    @GetMapping
    public String index(ModelMap model) {
        List<Image> listImage = imageService.findAll();
        model.addAttribute("listImage", listImage);
        return "admin/image";
    }

    @RequestMapping(value = "add", method = RequestMethod.GET)
    public String add(ModelMap model) {
        model.addAttribute("image", new Image());
        return "admin/add-image";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String add(@RequestParam("imageUrl") MultipartFile file) {
        if (!file.isEmpty()) {
            imageService.save(file);
            imageService.add(path + file.getOriginalFilename());
        }
        return "redirect:/admin/image";
    }
}
