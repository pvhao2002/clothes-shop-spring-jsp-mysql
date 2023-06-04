package net.app.project.service;


import net.app.project.models.Image;
import net.app.project.repository.ImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class ImageService {
    @Autowired
    private ImageRepository imageRepository;
    private final Path root = Paths.get("src/main/resources/static/web/images");

    public void init() {
        try {
            Files.createDirectories(root);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void save(MultipartFile file){
        try {
            Files.copy(file.getInputStream(), root.resolve(Objects.requireNonNull(file.getOriginalFilename())), StandardCopyOption.REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void add(String url) {
        Image image = new Image();
        image.setImageUrl(url);
        imageRepository.save(image);
    }

    public List<Image> findAll() {
        return imageRepository.findAll();
    }

    public Optional<Image> findById(int id) {
        return imageRepository.findById(id);
    }

    public Image save(Image image) {
        return imageRepository.save(image);
    }

    public void delete(int id) {
        Optional<Image> img = imageRepository.findById(id);
        if (img.isPresent()) {
            imageRepository.deleteById(id);
        }
    }

    public void edit(Integer id, String s) {
        Optional<Image> image = imageRepository.findById(id);
        if (image.isPresent()) {
            image.get().setImageUrl(s);
            imageRepository.save(image.get());
        }
    }
}
