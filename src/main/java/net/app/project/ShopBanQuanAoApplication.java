package net.app.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
public class ShopBanQuanAoApplication {
    public static void main(String[] args) {
        SpringApplication.run(ShopBanQuanAoApplication.class, args);
    }
}
