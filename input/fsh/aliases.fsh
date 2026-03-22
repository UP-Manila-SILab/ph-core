Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $PSA = https://psa.gov.ph/classification
Alias: $PSCED = https://psa.gov.ph/classification/psced/level
Alias: $PSGC = https://psa.gov.ph/classification/psgc
Alias: $PSOC = https://psa.gov.ph/classification/psoc/unit
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $v3-roleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode

// Obligation extension
Alias: $obligation = http://hl7.org/fhir/StructureDefinition/obligation

// PH Core ActorDefinitions for obligations
// Using lowercase aliases with $ prefix (like EU EPS) for concise RuleSet usage
// These resolve to full canonical URLs required by the obligation extension
Alias: $server = http://doh.gov.ph/fhir/ph-core/ActorDefinition/Server
Alias: $consumer = http://doh.gov.ph/fhir/ph-core/ActorDefinition/Consumer
Alias: $creator = http://doh.gov.ph/fhir/ph-core/ActorDefinition/Creator