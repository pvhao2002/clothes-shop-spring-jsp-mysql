package net.app.project.service;

import net.app.project.models.Cart;
import net.app.project.models.CartItem;
import net.app.project.models.Product;
import net.app.project.repository.CartItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartItemService {

    @Autowired
    private CartItemRepository cartItemRepository;

    @Autowired
    private ProductService productService;


    // find by Product
    public CartItem findByProduct(Product product) {
        return cartItemRepository.findByProduct(productService.findById(product.getProductId()));
    }
    public List<CartItem> findAllByCart(Cart cart) {
        return cartItemRepository.findAllByCart(cart);
    }

    public void save(CartItem cartItem) {
        cartItemRepository.save(cartItem);
    }

    public void deleteById(int id) {
        cartItemRepository.deleteById(id);
    }

    public CartItem findById(int id) {
        return cartItemRepository.findById(id).get();
    }
}
