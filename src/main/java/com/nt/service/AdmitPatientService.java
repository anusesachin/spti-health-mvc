package com.nt.service;

import com.nt.Dto.patients.AdmitPatientPageDto;
import com.nt.Dto.patients.AdmitPatientRequestDto;
import com.nt.Dto.patients.AdmitPatientResponseDto;

public interface AdmitPatientService {

	String addAdmitPatientdetails(AdmitPatientRequestDto dto);

	AdmitPatientResponseDto getAdmitPatientBypatienId(Long id);

	AdmitPatientPageDto allAdmitPatients();

}
