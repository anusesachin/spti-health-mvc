package com.nt.cntrl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.Dto.patients.AdmitPatientPageDto;
import com.nt.Dto.patients.AdmitPatientRequestDto;
import com.nt.Dto.patients.AdmitPatientResponseDto;
import com.nt.Dto.patients.PatientOPDHistoryResponseDto;
import com.nt.Dto.patients.PatientPageDto;
import com.nt.Dto.patients.PatientRequestDto;
import com.nt.Dto.patients.PatientResponseDto;
import com.nt.constants.MessageConstants;
import com.nt.service.AdmitPatientService;
import com.nt.service.PatientService;

@Controller
@RequestMapping("/admits")
public class AdmitPatientController {
	
	@Autowired
	private AdmitPatientService admitPatientService;
	
	@Autowired
	private PatientService patientService;
	
	@GetMapping("/AdmitProfile/{id}")
	public String AdmitProfilePage(@PathVariable Long id , Model model, HttpSession session, RedirectAttributes ra) {
		String user = ( String ) session.getAttribute( "username" );
		if ( user != null ) {
			PatientResponseDto result = patientService.getPatientById( id );
			model.addAttribute( "patientList", result );
		}
		 return "patients/AdmitProfile";
	}
	
	
	@PostMapping
	public String addAdmitPatientdetails( @ModelAttribute AdmitPatientRequestDto dto, Model model, HttpSession session, RedirectAttributes ra ) {
		String user = ( String ) session.getAttribute( "username" );

		PatientResponseDto result = patientService.getPatientById( dto.getPatientId() );
		model.addAttribute( "patientList", result );

		if ( user != null ) {
			
			 admitPatientService.addAdmitPatientdetails( dto );
			
		}
		 return "redirect:/admits";
	}
	
	@GetMapping
	public String allAdmitPatients( Model model, HttpSession session ) {

		String user = ( String ) session.getAttribute( "username" );

		AdmitPatientPageDto listofAdmitPatient = admitPatientService.allAdmitPatients( );

		if ( user != null ) {
			if ( listofAdmitPatient != null ) {
				model.addAttribute( "list", listofAdmitPatient );
				return "patients/allAdmitPatient";
			} else {
				model.addAttribute( "errorMsg", "something went wrong" );
				return "error";
			}
		}

		return "login";

	}

	
	@ResponseBody
	@GetMapping("/getCurrentdateAdmitPatient/{todayrecord}")
	public List<AdmitPatientResponseDto>  todayAdmitPatient( @PathVariable String todayrecord) {

		List<AdmitPatientResponseDto> listofAdmitPatient = admitPatientService.todayAdmitPatient(todayrecord);
		
		return listofAdmitPatient;
     }
	

	@ResponseBody
	@GetMapping("/getCurrentdateDischargePatient/{todayrecord}")
	public List<AdmitPatientResponseDto>   todayDischargePatient( @PathVariable String todayrecord) {
		List<AdmitPatientResponseDto> listofAdmitPatient = admitPatientService. todayDischargePatient(todayrecord);
		
		return listofAdmitPatient;
     }
	
	
}
