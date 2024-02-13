package com.nt.Dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class LoginResponceDto {
	private int id;
	private String name;
	private String username;
	private String role;
	private String status;
	private int branchId;
	private String branchName;
	private Long loginId;

}
