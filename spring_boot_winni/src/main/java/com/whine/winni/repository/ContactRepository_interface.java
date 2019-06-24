package com.whine.winni.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.whine.winni.vo.Contact_vo;

public interface ContactRepository_interface extends JpaRepository<Contact_vo, Integer> {

}
