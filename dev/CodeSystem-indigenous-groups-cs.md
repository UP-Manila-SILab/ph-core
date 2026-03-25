# Indigenous Groups - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indigenous Groups**

## CodeSystem: Indigenous Groups (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/CodeSystem/indigenous-groups-cs | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:IndigenousGroupsCS |

 
A list of codes representing the recognized indigenous groups in the Philippines to which a person may belong. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [IndigenousGroupsVS](ValueSet-indigenous-groups-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "indigenous-groups-cs",
  "url" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/indigenous-groups-cs",
  "version" : "0.1.0",
  "name" : "IndigenousGroupsCS",
  "title" : "Indigenous Groups",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-25T03:34:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "A list of codes representing the recognized indigenous groups in the Philippines to which a person may belong.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 33,
  "concept" : [{
    "code" : "Aetas",
    "display" : "Aetas"
  },
  {
    "code" : "Ati",
    "display" : "Ati"
  },
  {
    "code" : "Badjaos",
    "display" : "Badjaos"
  },
  {
    "code" : "Batak",
    "display" : "Batak"
  },
  {
    "code" : "Blaan",
    "display" : "Blaan"
  },
  {
    "code" : "Bontoc",
    "display" : "Bontoc"
  },
  {
    "code" : "Bukidnon",
    "display" : "Bukidnon"
  },
  {
    "code" : "Higaonon",
    "display" : "Higaonon"
  },
  {
    "code" : "Ibaloi",
    "display" : "Ibaloi"
  },
  {
    "code" : "Igorot",
    "display" : "Igorot"
  },
  {
    "code" : "Ilongots",
    "display" : "Ilongots"
  },
  {
    "code" : "Isnag",
    "display" : "Isnag"
  },
  {
    "code" : "Isneg",
    "display" : "Isneg"
  },
  {
    "code" : "Kalinga",
    "display" : "Kalinga"
  },
  {
    "code" : "Kankanaey",
    "display" : "Kankanaey"
  },
  {
    "code" : "Lumad",
    "display" : "Lumad"
  },
  {
    "code" : "Mamanwa",
    "display" : "Mamanwa"
  },
  {
    "code" : "Mandaya",
    "display" : "Mandaya"
  },
  {
    "code" : "Mangyan",
    "display" : "Mangyan"
  },
  {
    "code" : "Manobo",
    "display" : "Manobo"
  },
  {
    "code" : "Mansaka",
    "display" : "Mansaka"
  },
  {
    "code" : "Palawano",
    "display" : "Palawano"
  },
  {
    "code" : "Palaweño",
    "display" : "Palaweño"
  },
  {
    "code" : "Sangir",
    "display" : "Sangir"
  },
  {
    "code" : "Subanen",
    "display" : "Subanen"
  },
  {
    "code" : "T`boli",
    "display" : "T`boli"
  },
  {
    "code" : "Tagabawa",
    "display" : "Tagabawa"
  },
  {
    "code" : "Tagakaulo",
    "display" : "Tagakaulo"
  },
  {
    "code" : "Tagbanwa",
    "display" : "Tagbanwa"
  },
  {
    "code" : "Tasaday",
    "display" : "Tasaday"
  },
  {
    "code" : "Tinguian",
    "display" : "Tinguian"
  },
  {
    "code" : "Tumandok",
    "display" : "Tumandok"
  },
  {
    "code" : "Others",
    "display" : "Others"
  }]
}

```
