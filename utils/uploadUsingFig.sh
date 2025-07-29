 UploadFIG -pid hl7.fhir.uv.extensions.r4 -d https://cdr.fhirlab.net/fhir  --includeReferencedDependencies
 UploadFIG -pid hl7.fhir.uv.extensions.r4 -d https://tx.fhirlab.net/fhir  --includeReferencedDependencies
 UploadFIG -s output/package.r4.tgz -d https://cdr.fhirlab.net/fhir  --includeReferencedDependencies -odf deps_cdr.txt
 UploadFIG -s output/package.r4.tgz -d https://cdr.fhirlab.net/fhir  --includeReferencedDependencies -odf deps_tx.txt