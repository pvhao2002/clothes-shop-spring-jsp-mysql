package net.app.project.dto;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDTO {
    private int productId;
    private String name;
    private String description;
    private double price;
    private String imageUrl;
    private int categoryId;


}
