java -jar tooling-cli-3.6.0.jar -RefreshIG -help

|Option|Description|
|---|---|
|-?, -h, --help|                           Show this help page                   |
|--RefreshIG|                              The operation to run.                 |
|-d, --include-dependencies|               If omitted only the primary CQL library will be packaged.|
|-e, --encoding [String: desired output encoding for resources]|   If omitted, output will be generated using JSON encoding.|
|--elm, --include-elm|                     If omitted ELM will not be produced or packaged.| 
|--fhir-uri, --fs [String: uri of fhir server]|    If omitted the final bundle will not be loaded to a FHIR server.|
|--ig-path, --ip <String: Path to the IG, relative to the root directory>|     Path to the IG, relative to the root directory|  
|--ini <String: Path to the IG ini file>|  Path to ig ini file|                   
|--libraryOutput, --libraryOutputPath, --lop [String: path to the output directory for updated libraries]|   If omitted, the libraries will overwrite any existing libraries|
|--librarypath, --lp [String: directory of library resources]|   Provide a single path, relative to the root directory, for library resources. The path will be added to the resource directories available to the refresh processing.|
|--measure-to-refresh-path, --mtrp [String: Path to Measure to refresh.]|       Path to Measure to refresh.    |       
|--measureOutput, --measureOutputPath, --mop [String: path to the output directory for updated measures]    |If omitted, the measures will overwrite any existing measures |         
|-p, --include-patients|                   If omitted patient scenario information will not be packaged. |           
|--resourcepath, --rp [String: directory of resources]            |Use multiple times to define multiple  resource directories, relative to the root directory.|
|--root-dir [String: Root directory of the IG]    |Root directory of the ig|              
|-s, --skip-packages|                      Specifies whether to skip packages building.|    
|--ss, --stamp [String: Indicates  whether refreshed Measure and Library resources should be stamped with the 'cqf-tooling' stamp via the cqfm-softwaresystem Extension]        |Indicates whether refreshed Measure and Library resources should be stamped with the 'cqf-tooling' stamp via the cqfm-softwaresystem Extension. |    
|-t, --include-terminology|                If omitted terminology will not be packaged|   
|--timestamp, --ts [String: Indicates  whether refreshed Bundle should attach timestamp of creation]|   Indicates whether refreshed Bundle should attach timestamp of creation.|
|-v, --versioned|                          If omitted resources must be uniquely named.|