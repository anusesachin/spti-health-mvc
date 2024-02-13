package com.nt.cntrl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nt.Dto.patients.AdmitPatientRequestDto;
import com.nt.Dto.patients.AdmitPatientResponseDto;
import com.nt.Dto.patients.DischargePatientRequestDto;
import com.nt.Dto.patients.PatientResponseDto;
import com.nt.service.AdmitPatientService;
import com.nt.service.DischargePatientService;
import com.nt.service.PatientService;

@Controller
@RequestMapping("/discharge")
public class DischargePatientController {
	
	@Autowired
	private PatientService patientService;
	@Autowired
	private DischargePatientService dischargePatientService;
	@Autowired
	private AdmitPatientService admitPatientService;
	

	@GetMapping("/discharge-form/{id}")
	public String dischargeForm(@PathVariable Long id ,HttpSession session, Model model) {
		PatientResponseDto result = patientService.getPatientById( id );
		model.addAttribute( "patient", result );
		
		AdmitPatientResponseDto admitPatientResponseDto = admitPatientService.getAdmitPatientBypatienId(id);
		model.addAttribute( "admitPatientResponseDto", admitPatientResponseDto );
		
		return "discharge/dischargeForm";
	}
	
	@PostMapping
	public String dischargePatient(@ModelAttribute DischargePatientRequestDto dto, Model model, HttpSession session, RedirectAttributes ra) {
			
		dischargePatientService.dischargePatient( dto );
			
		return "redirect:/admits";
	}

}
