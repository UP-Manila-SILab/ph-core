Instance: Consumer
InstanceOf: ActorDefinition
Title: "PH Core Consumer"
Description: "A PH Core Consumer is a system that receives and uses PH Core resources."
Usage: #definition
* status = #draft
* type = #system
* name = "Consumer"
* title = "PH Core Consumer"
* experimental = false
* description = "A PH Core Consumer actor is a system that receives PH Core resources and uses the content of these resources."
* documentation = """A PH Core Consumer actor is a system that receives PH Core resources and uses the content of these resources.

This includes:
- Electronic Health Records (EHRs) that import patient data
- Clinical Decision Support Systems (CDSS) in Philippine hospitals
- Health analytics and reporting platforms
- Mobile health applications used by patients and providers
- Telemedicine platforms serving Filipino patients
- Health information exchanges that aggregate data
- Research systems utilizing health data

PH Core Consumers are responsible for:
- Correctly interpreting PH Core resource content
- Handling Must Support elements as appropriate
- Respecting data usage policies and patient privacy
- Processing Philippine-specific extensions and terminology
- Supporting clinical workflows in the Philippine healthcare context

Consumers may display, process, analyze, or store the received PH Core resources for various healthcare purposes."""
* url = "http://doh.gov.ph/fhir/ph-core/ActorDefinition/Consumer"
