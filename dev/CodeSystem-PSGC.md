# Mock PSGC - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mock PSGC**

## CodeSystem: Mock PSGC (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PSGC |

 
Mock of the Philippine Standard Geographic Code. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Barangays](ValueSet-barangays.md)
* [Cities](ValueSet-cities.md)
* [Provinces](ValueSet-provinces.md)
* [Regions](ValueSet-regions.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSGC",
  "url" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
  "version" : "0.1.0",
  "name" : "PSGC",
  "title" : "Mock PSGC",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-25T03:26:10+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Mock of the Philippine Standard Geographic Code.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 22,
  "concept" : [{
    "code" : "1380100001",
    "display" : "Barangay 1"
  },
  {
    "code" : "1380100000",
    "display" : "City of Caloocan"
  },
  {
    "code" : "1380200000",
    "display" : "City of Las Piñas"
  },
  {
    "code" : "1400100000",
    "display" : "Abra"
  },
  {
    "code" : "1401100000",
    "display" : "Benguet"
  },
  {
    "code" : "1402700000",
    "display" : "Ifugao"
  },
  {
    "code" : "1403200000",
    "display" : "Kalinga"
  },
  {
    "code" : "1404400000",
    "display" : "Mountain Province"
  },
  {
    "code" : "1408100000",
    "display" : "Apayao"
  },
  {
    "code" : "0102800000",
    "display" : "Ilocos Norte"
  },
  {
    "code" : "0102900000",
    "display" : "Ilocos Sur"
  },
  {
    "code" : "0103300000",
    "display" : "La Union"
  },
  {
    "code" : "0105500000",
    "display" : "Pangasinan"
  },
  {
    "code" : "0200900000",
    "display" : "Batanes"
  },
  {
    "code" : "0201500000",
    "display" : "Cagayan"
  },
  {
    "code" : "0203100000",
    "display" : "Isabela"
  },
  {
    "code" : "0402100000",
    "display" : "Cavite"
  },
  {
    "code" : "0403400000",
    "display" : "Laguna"
  },
  {
    "code" : "0405600000",
    "display" : "Quezon"
  },
  {
    "code" : "0405800000",
    "display" : "Rizal"
  },
  {
    "code" : "1704000000",
    "display" : "Marinduque"
  },
  {
    "code" : "1705100000",
    "display" : "Occidental Mindoro"
  }]
}

```
