package workflowResult

default unitTestPass = false
default staticCodeAnalysisPass = false
default passAll = false

unitTestPass = true {
    input.workflow.unitTest.attestations.testQuantity == input.workflow.unitTest.attestations.passQuantity
}

staticCodeAnalysisPass = true {
    input.workflow.staticCodeAnalysis.attestations.codeCoverage >= 80
    input.workflow.staticCodeAnalysis.attestations.cyclomaticComplexit < 40
}

passAll = true {
	unitTestPass
	staticCodeAnalysisPass
}