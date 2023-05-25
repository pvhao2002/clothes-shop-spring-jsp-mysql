package net.app.project.service;


import net.app.project.models.User;
import net.app.project.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;


    public void add(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public User findById(Integer id) {
        Optional<User> e = userRepository.findById(id);
        return e.orElse(null);
    }

    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }


    public void delete(Integer id) {
        userRepository.deleteById(id);
    }

    public Page<User> getUserByPaginate(int currentPage, int pageSize) {
        Pageable p = PageRequest.of(currentPage, pageSize);
        return userRepository.findAll(p);
    }
}
