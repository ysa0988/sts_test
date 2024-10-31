package org.hdcd.domain;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString(exclude="userName")
@RequiredArgsConstructor

public class Member {
	private final String userId;
	private final String password;
	private String uerName;
}
