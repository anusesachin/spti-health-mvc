package com.nt.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.nt.Dto.patients.AdmitPatientPageDto;
import com.nt.Dto.patients.AdmitPatientRequestDto;
import com.nt.Dto.patients.AdmitPatientResponseDto;
import com.nt.Dto.patients.DischargePatientResponseDto;
import com.nt.Dto.patients.PatientOPDHistoryResponseDto;

@Service
public class AdmitPatientServiceImpl implements AdmitPatientService {

	@Override
	public String addAdmitPatientdetails(AdmitPatientRequestDto dto) {
				RestTemplate template = new RestTemplate();
		
				String url = "http://localhost:9696/admits";
		
				HttpHeaders headers = new HttpHeaders();
				headers.setAccept( Arrays.asList( MediaType.APPLICATION_JSON ) );
				headers.setContentType( MediaType.APPLICATION_JSON );
		
				HttpEntity<AdmitPatientRequestDto> request = new HttpEntity<>( dto, headers );
				try {
					ResponseEntity<String> result = template.exchange( url, HttpMethod.POST, request, String.class );
					return result.getBody();
				} catch ( Exception e ) {
					e.printStackTrace();
				}
				return null;
	}

	@Override
	public AdmitPatientResponseDto getAdmitPatientBypatienId(Long id) {
		RestTemplate template = new RestTemplate();
		String url = "http://localhost:9696/admits/patient/id/" + id;
		HttpHeaders headers = new HttpHeaders();
		HttpEntity<String> entity = new HttpEntity<>( "body", headers );
		try {

			ResponseEntity<AdmitPatientResponseDto> res = template.exchange( url, HttpMethod.GET, entity, AdmitPatientResponseDto.class );
			return res.getBody();

		} catch ( Exception e ) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public AdmitPatientPageDto allAdmitPatients() {
		RestTemplate template = new RestTemplate();
		String url = "http://localhost:9696/admits/?pageNo=0";
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType( MediaType.APPLICATION_JSON );
		HttpEntity<String> entity = new HttpEntity<>( "body", headers );
		try {

			ResponseEntity<AdmitPatientPageDto> res = template.exchange( url, HttpMethod.GET, entity, AdmitPatientPageDto.class );
			return res.getBody();

		} catch ( Exception e ) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<AdmitPatientResponseDto> todayAdmitPatient(String todayrecord) {
		RestTemplate template = new RestTemplate();
		String url = "http://localhost:9696/admits/todayAdmitPatientDashbord/"+todayrecord;
		HttpHeaders headers = new HttpHeaders();
		HttpEntity<String> entity = new HttpEntity<>( "body", headers );
		try {
			ParameterizedTypeReference<List<AdmitPatientResponseDto>> responseType = new ParameterizedTypeReference<List<AdmitPatientResponseDto>>() {
			};
			ResponseEntity<List<AdmitPatientResponseDto>> res = template.exchange( url, HttpMethod.GET, entity, responseType );
			return res.getBody();

		} catch ( Exception e ) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public List<AdmitPatientResponseDto> todayDischargePatient(String todayrecord) {
		RestTemplate template = new RestTemplate();
		String url = "http://localhost:9696/admits/disacharge/todayDischargePatientDashbord/"+todayrecord;
		HttpHeaders headers = new HttpHeaders();
		HttpEntity<String> entity = new HttpEntity<>( "body", headers );
		try {
			ParameterizedTypeReference<List<AdmitPatientResponseDto>> responseType = new ParameterizedTypeReference<List<AdmitPatientResponseDto>>() {
			};
			ResponseEntity<List<AdmitPatientResponseDto>> res = template.exchange( url, HttpMethod.GET, entity, responseType );
			return res.getBody();

		} catch ( Exception e ) {
			e.printStackTrace();
		}

		return null;
	}
}
