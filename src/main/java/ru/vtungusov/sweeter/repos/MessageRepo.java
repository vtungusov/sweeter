package ru.vtungusov.sweeter.repos;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.vtungusov.sweeter.domain.Message;

@Repository
public interface MessageRepo extends CrudRepository<Message, Long> {
}