//package com.nt.cntrl;
//
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//import com.nt.Dto.doctors.DoctorResponseDto;
//import com.nt.Dto.dropdowns.MedicineTypeDto;
//import com.nt.Dto.patients.PatientResponseDto;
//import com.nt.Dto.prescriptions.MedicineResponseDto;
//import com.nt.Dto.prescriptions.PrescriptionRequestDto;
//import com.nt.Dto.prescriptions.PrescriptionResponseDto;
//import com.nt.constants.MessageConstants;
//import com.nt.service.DropdownService;
//import com.nt.service.HrService;
//import com.nt.service.PatientService;
//import com.nt.service.PrescriptionService;
//
//@Controller
//@RequestMapping( "/prescriptions" )
//public class PrescriptionController {
//
//	@Autowired
//	private HrService hrService;
//
//	@Autowired
//	private PatientService patientService;
//
//	@Autowired
//	private PrescriptionService prescriptionService;
//
//	@Autowired
//	private DropdownService dropdownService;
//
//	@GetMapping( "/addPrescriptions/patient/{id}" )
//	public String addPrescriptions( HttpSession session, Model model, @PathVariable Long id ) {
//		Integer branchId = ( Integer ) session.getAttribute( "branchId" );
//		List<DoctorResponseDto> doctors = hrService.allDoctorsList( branchId );
//		model.addAttribute( "doctors", doctors );
//		model.addAttribute( "doctorId", session.getAttribute( "loginId" ) );
//		PatientResponseDto patient = patientService.getPatientById( id );
//		model.addAttribute( "patient", patient );
//		List<MedicineTypeDto> medicineTypes = dropdownService.allMedicineTypes();
//		model.addAttribute( "medicineTypes", medicineTypes );
//		return "prescriptions/add";
//
//	}
//
//	@ResponseBody
//	@PostMapping
//	public String addPrescription( @RequestBody PrescriptionRequestDto dto, Model model, RedirectAttributes ra ) {
//		String result = prescriptionService.addPrescription( dto );
//
//		if ( result.equalsIgnoreCase( MessageConstants.ADD_PRESCRIPTION_SUCCESS_MESSAGE ) ) {
//			ra.addFlashAttribute( "successMessage", MessageConstants.ADD_PRESCRIPTION_SUCCESS_MESSAGE );
//			return "redirect:/wards";
//		} else {
//			ra.addFlashAttribute( "errorMessage", MessageConstants.ADD_PRESCRIPTION_ERROR_MESSAGE );
//			return "error";
//		}
//
//	}
//
//	@ResponseBody
//	@GetMapping( "/allPrescriptions/{id}" )
//	public List<PrescriptionResponseDto> findAllPatientPrescriptions( @RequestBody @PathVariable Long id ) {
//		List<PrescriptionResponseDto> result = prescriptionService.findAllPrescriptions( id );
//		return result;
//	}
//
//	@GetMapping( "/medicine" )
//	public String findMedicinesByPrescriptionsId( @RequestParam( "id" ) Long prescriptionId, Model model ) {
//
//		List<MedicineResponseDto> medicine = prescriptionService.findMedicineByPrescriptionId( prescriptionId );
//		model.addAttribute( "medicineList", medicine );
//
//		return "prescriptions/medicineDetails";
//	}
//}
