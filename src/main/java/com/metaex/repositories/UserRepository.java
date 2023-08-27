package com.metaex.repositories;


import org.springframework.data.jpa.repository.JpaRepository;

import com.metaex.entites.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

}
