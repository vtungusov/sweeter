package ru.vtungusov.sweeter.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.vtungusov.sweeter.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
