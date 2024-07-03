package com.nt.Dto.patients;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;



import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AdmitPatientResponseDto {

	private Long id;
	private String admitDischargeStatus;
	
	private PatientResponseDto patient;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
	private LocalDateTime admissionDate;
	
	private Long amounttobePaid;

}
