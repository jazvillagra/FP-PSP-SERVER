package py.org.fundacionparaguaya.pspserver.families.services;

import java.util.List;

import py.org.fundacionparaguaya.pspserver.families.dtos.FamilyDTO;
import py.org.fundacionparaguaya.pspserver.families.dtos.FamilyFileDTO;

public interface FamilyService {

	FamilyDTO updateFamily(Long familyId, FamilyDTO familyDTO);

	FamilyDTO addFamily(FamilyDTO familyDTO);
	
	FamilyDTO getFamilyById(Long familyId);
	
	List<FamilyDTO> getAllFamilies();
	
	void deleteFamily(Long familyId);

	List<FamilyDTO> getFamiliesByFilter(Long organizationId, Long countryId, Long cityId, String freeText);

	FamilyFileDTO getFamilyFileById(Long familyId);
	
}
