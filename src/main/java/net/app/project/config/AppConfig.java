package net.app.project.config;

import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

public class AppConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/cimg/**").addResourceLocations("/resources/frclient/images/");
        registry.addResourceHandler("/ccss/**").addResourceLocations("/resources/frclient/css/");
        registry.addResourceHandler("/cjs/**").addResourceLocations("/resources/frclient/js/");
    }
}
