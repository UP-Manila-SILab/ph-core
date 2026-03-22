RuleSet: ObligationActorAndCode(actor, code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = {actor}

RuleSet: ObligationElement(element)
* ^extension[$obligation][=].extension[elementId].valueString = {element}

// ObligationSet1-3 are generic obligation sets based on EU EPS patterns.
// They vary by creator obligation level while maintaining consistent server/consumer obligations.
// Use these when you need standardized obligation patterns across elements.

// ObligationSet1: Use for REQUIRED elements where creators MUST be able to populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator SHALL be able-to-populate (mandatory capability)
RuleSet: ObligationSet1
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)

// ObligationSet2: Use for RECOMMENDED elements where creators SHOULD be able to populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator SHOULD be able-to-populate (recommended capability)
RuleSet: ObligationSet2
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)

// ObligationSet3: Use for OPTIONAL elements where creators MAY populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator MAY be able-to-populate (optional capability)
RuleSet: ObligationSet3
* insert ObligationActorAndCode($server, #SHALL:handle)
* insert ObligationActorAndCode($consumer, #SHALL:handle)
* insert ObligationActorAndCode($creator, #MAY:able-to-populate)

RuleSet: ObligationIpsPopulateIfKnownDisplay
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

RuleSet: ObligationIpsAbleToPopulateDisplay
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHOULD:able-to-populate)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

RuleSet: ObligationIpsPopulateDisplay
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHOULD:display)

RuleSet: ObligationIpsPopulateHandle
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)

RuleSet: ObligationIpsPopulateIfKnownHandle
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Creator, #SHALL:populate-if-known)
* insert ObligationActorAndCode(http://hl7.org/fhir/uv/ips/ActorDefinition/Consumer, #SHALL:handle)
