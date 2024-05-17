package com.nt.Dto.patients;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class DischargePatientRequestDto {

    private Long dischargePatientId;

    @NotNull(message = "MLC number must not be null")
    private Long MLC_No;

    @NotNull(message = "IPD number must not be null")
    private Long IPD_No;

    @NotBlank(message = "Consultant must not be blank")
    private String consultant;

    @NotBlank(message = "Diagnosis must not be blank")
    private String diagnosis;

    @NotBlank(message = "Clinical history must not be blank")
    private String clinical_History;

    @NotNull(message = "Patient ID must not be null")
    private Long patientId;

    @NotNull(message = "Admit patient ID must not be null")
    private Long admitPatientId;

    @NotBlank(message = "Admit discharge status must not be blank")
    private String admitDischargeStatus;

    @Positive(message = "Amount paid must be a positive number")
    private Long amountPaid;

    @Positive(message = "Amount to be paid must be a positive number")
    private Long amounttobePaid;

    @NotNull(message = "Discharge date must not be null")
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime dischargeDate;

}
