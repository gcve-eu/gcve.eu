---
title: About 
---

# GCVE: Global CVE Allocation System

The **Global CVE (GCVE)** allocation system is a new, decentralized approach to vulnerability identification and numbering, designed to improve flexibility, scalability, and autonomy for participating entities. 

While remaining compatible with the traditional CVE system, GCVE introduces **GCVE Numbering Authorities (GNAs)**. GNAs are independent entities that can allocate identifiers without relying on a centralised block distribution system or rigid policy enforcement.

## Key Concepts

### GCVE Numbering Authorities (GNA)

A **GCVE Numbering Authority (GNA)** is an approved entity that is authorised to allocate GCVE identifiers.

Each GNA is assigned a unique numeric identifier, which becomes part of the GCVE ID format.

GNAs have the autonomy to:

- Allocate identifiers at their own pace.
- Define their own internal policies for vulnerability identification.
- Operate independently of a centralized block allocation authority.

### Compatibility with CVE

GCVE maintains compatibility with existing CVEs using a backward-compatible ID scheme.

## GCVE Identifier Format

The GCVE identifier uses a four-part format:

`GCVE-<GNA ID>-<YEAR>-<UNIQUE ID>`

### Format Breakdown

| Field       | Description                                                         |
|-------------|---------------------------------------------------------------------|
| `GCVE`      | Prefix indicating a Global CVE ID |
| `GNA ID`    | Unique identifier for the GCVE Numbering Authority                  |
| `YEAR`      | The year of disclosure or allocation                                |
| `UNIQUE ID` | A GNA-assigned identifier that must be unique for vulnerability allocated at the GNA |                 

### Examples

| GCVE ID              | Description                                                |
|----------------------|------------------------------------------------------------|
| `GCVE-0-2023-40224`  | Existing CVE (`CVE-2023-40224`) mapped into GCVE format     |
| `GCVE-1-2025-00001`  | using the GCVE allocation system           |
| `GCVE-5-2024-12345`  | Vulnerability assigned by GNA with ID 5 in the year 2024   |

## Reserved GNA Identifiers

| GNA ID | Assigned Entity       | Notes                                |
|--------|------------------------|--------------------------------------|
| 0      | Legacy CVE Identifiers | All existing CVEs mapped here        |
| 1      | CIRCL                  | First organization using GCVE model  |
| ...    | (To be assigned)       | Other GNA IDs will be allocated      |

## Benefits of GCVE

- **Decentralized Allocation:** GNAs manage their own allocations without requesting blocks from a centralised distribution system.
- **Policy Flexibility:** GNAs can operate under their own disclosure or allocation guidelines.
- **Scalability:** Eliminates bottlenecks and the need to reach consensus or solve disputes as in the existing centralised system.
- **Compatibility:** Seamless transition for legacy CVEs via `GNA ID 0`.

## Implementation And Registry

The GCVE registry at [https://gcve.eu](https://gcve.eu) will maintain:

- A list of all GNAs and their IDs
- The current state of allocations (optional or via GNA publication)
- Public lookup and API support

## Software Supporting GCVE

Any software using CVE can automatically generate a GCVD with the `GCVE-0` prefix. 

In addition, the full GNA allocation process is supported in:

- [vulnerability-lookup](https://www.vulnerability-lookup.org)

## Eligibility and Process to Obtain a GNA ID

You are eligible to receive a GNA ID if you meet one of the following criteria:

- **You are [an existing CNA](/dist/cna_partners.json)** recognized by the CVE Program.

- **You are not a CNA**, but you meet one of the following conditions:
  - You are a registered CSIRT or CERT listed at [FIRST.org](https://www.first.org/), part of the [EU CSIRTs Network](https://csirtsnetwork.eu/), or a member of [TF-CSIRT](https://tf-csirt.org/).
  - You are a software, hardware, or service provider that regularly discloses vulnerabilities affecting your own products or services, and you have an official CPE vendor name assigned.
  - You have a public vulnerability disclosure policy and maintain a publicly accessible source for newly disclosed vulnerabilities.

If you fall into one of the above categories, please send an email to **gna@gcve.eu** with your organization’s name and request. This will allow us to assign you a GNA ID.

You must also include the following information in your request using the GCVE JSON directory format:

- `short_name` — (required) Short name of the organization  
- `full_name` — (required) Full legal name of the organization  
- `cpe_vendor_name` — (optional) Official CPE vendor name, if available  
- `gcve_url` — URL to the public vulnerability disclosure website  
- `gcve_api` — URL of the API endpoint providing vulnerability data  
- `gcve_dump` — URL to a machine-readable dump (e.g., JSON) of vulnerability information  
- `gcve_allocation` — URL of the interface used to allocate or register new vulnerabilities  


## JSON Directory File Available at GCVE.eu

A JSON-L file containing the following information is available at [https://gcve.eu/dist/gcve.json](/dist/gcve.json) or [https://gcve.eu/dist/gcve.jsonl](https://gcve.eu/dist/gcve.jsonl)

~~~json
{
  "id": 0,
  "short_name": "CVE",
  "full_name": "CVE Program"
}
{
  "id": 1,
  "short_name": "CIRCL",
  "cpe_vendor_name": "circl",
  "full_name": "Computer Incident Response Center Luxembourg",
  "gcve_url": "https://vulnerability.circl.lu/",
  "gcve_api": "https://vulnerability.circl.lu/api/",
  "gcve_dump": "https://vulnerability.circl.lu/dumps/",
  "gcve_allocation": "https://vulnerability.circl.lu/"
}
{
  "id": 2,
  "short_name": "EUVD",
  "full_name": "European Union Vulnerability Database",
  "gcve_url": "https://euvd.enisa.europa.eu/"
}
{
  "id": 100,
  "short_name": "VulDB",
  "full_name": "vuldb.com",
  "cpe_vendor_name": "vuldb",
  "gcve_url": "https://vuldb.com/?gna.recent",
  "gcve_api": "https://vuldb.com/?api",
  "gcve_dump": "https://vuldb.com/?export",
  "gcve_allocation": "https://vuldb.com/?id.add"
 }
{
  "id": 101,
  "short_name": "ERIC",
  "cpe_vendor_name": "Ericsson",
  "full_name": "Ericsson AB",
  "gcve_dump": "https://www.ericsson.com/en/about-us/security/security-bulletins"
}
{
  "id": 102,
  "short_name": "EACG",
  "full_name": "Enterprise Architecture Consulting Group",
  "gcve_api": "https://trustsource.csaf.trustsource.io/.well-known/csaf/provider-metadata.json",
  "gcve_dump": "https://www.trustsource.io/en/security-policy/"
}
{
  "id": 103,
  "short_name": "SCHUTZWERK",
  "cpe_vendor_name": "SCHUTZWERK",
  "full_name": "SCHUTZWERK GmbH",
  "gcve_url": "https://www.schutzwerk.com/blog/tags/advisories/"
}
~~~

