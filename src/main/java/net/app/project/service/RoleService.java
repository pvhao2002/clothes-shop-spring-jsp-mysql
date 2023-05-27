package net.app.project.service;


import net.app.project.models.Role;
import net.app.project.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService {

    @Autowired
    private RoleRepository roleRepository;


    public Role getUserRole(){
        return roleRepository.findByRoleName("ROLE_USER");
    }
}
