package net.app.project.service;


import net.app.project.models.Cart;
import net.app.project.models.User;
import net.app.project.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    public void save(Cart cart) {
        cartRepository.save(cart);
    }

    public Cart findByUser(User user) {
        return cartRepository.findByUser(user);
    }

}
