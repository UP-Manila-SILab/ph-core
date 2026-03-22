RuleSet: ObligationActorAndCode(actor, code)
* ^extension[$obligation][+].extension[code].valueCode = {code}
* ^extension[$obligation][=].extension[actor].valueCanonical = {actor}

RuleSet: ObligationElement(element)
* ^extension[$obligation][=].extension[elementId].valueString = {element}

// Generic obligation sets based on EU EPS patterns.
// They vary by creator obligation level while maintaining consistent server/consumer obligations.
// Use these when you need standardized obligation patterns across elements.

// ObligationRequired: Use for REQUIRED elements where creators MUST be able to populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator SHALL be able-to-populate (mandatory capability)
RuleSet: ObligationRequired
* insert ObligationActorAndCode(Server, #SHALL:handle)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
* insert ObligationActorAndCode(Creator, #SHALL:able-to-populate)

// ObligationRecommended: Use for RECOMMENDED elements where creators SHOULD be able to populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator SHOULD be able-to-populate (recommended capability)
RuleSet: ObligationRecommended
* insert ObligationActorAndCode(Server, #SHALL:handle)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
* insert ObligationActorAndCode(Creator, #SHOULD:able-to-populate)

// ObligationOptional: Use for OPTIONAL elements where creators MAY populate
// - Server SHALL handle
// - Consumer SHALL handle
// - Creator MAY be able-to-populate (optional capability)
RuleSet: ObligationOptional
* insert ObligationActorAndCode(Server, #SHALL:handle)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
* insert ObligationActorAndCode(Creator, #MAY:able-to-populate)

RuleSet: ObligationPopulateIfKnownDisplay
* insert ObligationActorAndCode(Creator, #SHALL:populate-if-known)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
* insert ObligationActorAndCode(Consumer, #SHOULD:display)

RuleSet: ObligationAbleToPopulateDisplay
* insert ObligationActorAndCode(Creator, #SHOULD:able-to-populate)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
* insert ObligationActorAndCode(Consumer, #SHOULD:display)

RuleSet: ObligationPopulateDisplay
* insert ObligationActorAndCode(Creator, #SHALL:populate)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
* insert ObligationActorAndCode(Consumer, #SHOULD:display)

RuleSet: ObligationPopulateHandle
* insert ObligationActorAndCode(Creator, #SHALL:populate)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)

RuleSet: ObligationPopulateIfKnownHandle
* insert ObligationActorAndCode(Creator, #SHALL:populate-if-known)
* insert ObligationActorAndCode(Consumer, #SHALL:handle)
