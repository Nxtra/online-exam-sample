package com.crossover.entity;

import org.springframework.data.jpa.domain.AbstractPersistable;

import javax.persistence.*;

@Entity
@Table(name = "authorities")
public class Authority extends AbstractPersistable<Integer> {

    @Column
    private String username;

    @Column
    private String authority;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "USER_ID")
    private User user;
}
