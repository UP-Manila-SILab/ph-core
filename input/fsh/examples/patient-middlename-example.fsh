Instance: MiddleNameExample
InstanceOf: PHCorePatient
Usage: #example
Description: "Juan Jane Macalalad Buenaventura (born 1980)."

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Official name:</strong> <em>Juan Jane Macalalad Buenaventura</em> (born 1980). Commonly shown as 'Juan Jane M. Buenaventura'.</p><p><strong>Maiden name:</strong> <em>Juan Jane Dela Cruz Macalalad</em>, often shown as 'Juan Jane D. Macalalad'.</p></div>"

* name[+].use = #official
* name[=].family = "Buenaventura"
* name[=].given[+] = "Juan Jane"
// * name[=].extension[middleName].valueString = "Macalalad"
// Juan Jane Macalalad Buenaventura (Juan Jane M. Buenaventura)

* name[+].use = #maiden
* name[=].family = "Macalalad"
* name[=].given[+] = "Juan Jane"
// * name[=].extension[middleName].valueString = "Dela Cruz"

// Juan Jane Dela Cruz Macalalad (Juan Jane D. Macalalad)

* birthDate = "1980-01-01"
* gender = #female