# ploigos-tool-opa

Download OPA tool here: https://www.openpolicyagent.org/docs/latest/#running-opa

Command to test policy:
```
opa eval -i workflow-attestation.json -d workflow-policy.rego "data.workflowResult"
```
