//package com.nt.Dto.patients;
//
//import java.time.LocalDateTime;
//
//import org.springframework.format.annotation.DateTimeFormat;
//
//import lombok.AllArgsConstructor;
//import lombok.Getter;
//import lombok.NoArgsConstructor;
//import lombok.Setter;
//
//@Getter
//@Setter
//@NoArgsConstructor
//@AllArgsConstructor
//public class PatientAdmissionRequestDto {
//
//	private Long admissionId;
//	private Long patientId;
//	private Long wardId;
//	private Long cotId;
//	@DateTimeFormat( pattern = "yyyy-MM-dd'T'HH:mm" )
//	private LocalDateTime admissionDate;
//	@DateTimeFormat( pattern = "yyyy-MM-dd'T'HH:mm" )
//	private LocalDateTime dischargeDate;
//	private Long doctorId;
//	private String nextOfKinName;
//	private String nextOfKinRelationship;
//	private String nextOfKinPhoneNumber;
//	private int branchId;
//	private String admissionStatus;
//}
