---
title: FAQ
toc: true
---

# GCVE Frequently Asked Questions (FAQ)

## **Q1: What is GCVE?**

A: GCVE (Global CVE Allocation System) is a new, decentralized system for identifying and numbering security vulnerabilities. It aims to increase flexibility, scalability, and autonomy for organizations involved in vulnerability management, while remaining compatible with the traditional CVE® system.

## **Q2: How is GCVE different from the traditional CVE system?**

A: The main difference is decentralization. GCVE introduces **GCVE Numbering Authorities (GNAs)**, which are independent entities that can allocate GCVE identifiers without needing blocks pre-allocated from a central authority or adhering strictly to centrally enforced policies. The traditional CVE system typically relies on a more centralized structure for ID allocation and policy.

## **Q3: What is a GCVE Numbering Authority (GNA)?**

A: A GNA is an organization approved to assign GCVE identifiers. Each GNA gets a unique numeric ID, which becomes part of the GCVE ID format. GNAs have the autonomy to allocate IDs at their own pace and define their own internal policies for vulnerability identification.

## **Q4: Does GCVE replace existing CVE IDs? How does compatibility work?**

A: No, GCVE does not replace existing CVE IDs. It's designed to be backward-compatible. All existing and future standard CVE IDs are represented within the GCVE system using the reserved `GNA ID 0`. For example, `CVE-2023-40224` can be represented as `GCVE-0-2023-40224`.

## **Q5: What is the format of a GCVE identifier?**

The GCVE identifier typically follows a traditional four-part format:

`GCVE-<GNA-ID>-<YEAR>-<UNIQUE-ID>`

This format is recommended because it is consistent with models used in other vulnerability identification systems.  

However, GNAs retain the flexibility to use alternative formats, especially if they already maintain their own identifier schemes.  

### Format Breakdown

| Field       | Description                                                         |
|-------------|---------------------------------------------------------------------|
| `GCVE`      | Prefix indicating a Global CVE ID |
| `GNA ID`    | Unique identifier for the GCVE Numbering Authority                  |
| `YEAR`      | The year of disclosure or allocation                                |
| `UNIQUE ID` | A GNA-assigned identifier that must be unique for vulnerability allocated at the GNA |                 

If a GNA chooses to use an alternative format, it must still follow this general prefix structure:

`GCVE-<GNA-ID>-<GNA-VALUE>`

The `GNA-VALUE` should be composed of valid 7-bit characters, excluding unprintable control codes and spaces.

The following regular expression can be used to validate a GCVE Identifier: `^GCVE-[0-9]+-[\x22-\x7E]+$`.

When defining a generic GNA value, GNAs should keep in mind the following considerations:

- The practicality and readability of the identifier (even if technically valid).
- Facilitating sharing and improving the visibility of the identifier.

The GCVE standard allows a certain level of flexibility in how information is conveyed, but it is strongly recommended to maintain a reasonable degree of readability.

For more details, [GCVE-BCP-04 - Recommendations and Best Practices for ID Allocation](/bcp/gcve-bcp-04/).

## **Q6: What are the main benefits of using the GCVE system?**

A: The key benefits include:
*   **Decentralized Allocation:** GNAs manage their own ID assignments.
*   **Policy Flexibility:** GNAs can operate under their own guidelines.
*   **Scalability:** Helps avoid bottlenecks found in centralized systems.
*   **Compatibility:** Seamlessly integrates existing CVEs via `GNA ID 0`.

## **Q7: Who is the first GNA using this model?**

A: CIRCL (Computer Incident Response Center Luxembourg) is the first organization assigned a GNA ID (`GNA ID 1`) to use the new GCVE allocation model. `GNA ID 0` is reserved for mapping existing CVEs.

## **Q8: Where can I find the official list of GNAs?**

A: The official registry, including a list of GNAs and their IDs, is maintained at [https://gcve.eu](https://gcve.eu) and published as JSON at the following location [https://gcve.eu/dist/gcve.json](https://gcve.eu/dist/gcve.json).

## **Q9: Is there software that supports GCVE?**

A: Yes. Any software handling standard CVEs can implicitly handle GCVE IDs with `GNA ID 0`. Additionally, the [vulnerability-lookup](https://www.vulnerability-lookup.org) tool supports the full GNA allocation process and GCVE format.

![GCVE integrated in a CVE view in vulnerability-lookup](/images/usage.png)

## **Q10: How can my organization become a GNA?**

A: If you are an existing CNA (CVE Numbering Authority) or an [organization falling into the eligibility criteria](https://gcve.eu/about/#eligibility-and-process-to-obtain-a-gna-id), you can send an email to `gna@gcve.eu` with your CNA name. You will need to provide information about your organization, like its short name and full name, similar to the format used in the GNA JSON directory file available on gcve.eu.

## **Q11: What information is available about GNAs on the gcve.eu website?**

A: A JSON is [available](https://gcve.eu/dist/gcve.json), containing details for each registered GNA. This includes their unique `id` (GNA ID), `short_name`, `full_name`, and potentially URLs for their specific GCVE data, API, dumps, and allocation process (like `gcve_url`, `gcve_api`, `gcve_dump`, `gcve_allocation`).

## **Q12: What is the relationship between the open source vulnerability-lookup project, the EUVD (European Union Vulnerability Database), and GCVE.eu?**

Europe has a strong cybersecurity network (thanks to the [EU CSIRTs network](https://csirtsnetwork.eu/)). CIRCL developed the open source [vulnerability-lookup](https://www.vulnerability-lookup.org/) project to address past challenges in collecting diverse sources, ensuring both diversity and stability. The project is co-funded by the European DEP program (NGSOTI) and Luxembourg to support national activities under NIS2.

While maintaining the project, CIRCL identified many shortcomings in ID allocation and correlation when using and operating the [vulnerability.circl.lu](https://vulnerability.circl.lu/) instance(s). To address this, we created [GCVE.eu](https://gcve.eu) as a resilient ID allocation system, designed to ensure autonomy from various vulnerability publishers and improve stability in identifier correlation.

As part of the unified NIS2 activities within the European Union, ENISA — which leads the [EU CSIRTs network](https://csirtsnetwork.eu/) — operates the [EUVD](https://euvd.enisa.europa.eu/), which relies on the [vulnerability-lookup](https://euvd.enisa.europa.eu/faq) software. There is a strong collaboration between CIRCL and ENISA on this topic to improve coordination, tooling, and data quality across the EU vulnerability ecosystem.

## **Q13: Is the JSON file distributed by GCVE signed, and how can the signature be verified?**

The [JSON file](https://gcve.eu/dist/gcve.json) distributed by GCVE is [digitally signed](https://gcve.eu/dist/gcve.json.sigsha512) using an RSA public key with SHA-512.

The public key is available at multiple locations:

- Via HTTP: [https://gcve.eu/dist/key/public.pem](https://gcve.eu/dist/key/public.pem)
- Via DNS: `dig -t TXT _key.gcve.eu`
- On GitHub: [https://raw.githubusercontent.com/gcve-eu/gcve.eu-directory/refs/heads/main/key/public.pem](https://raw.githubusercontent.com/gcve-eu/gcve.eu-directory/refs/heads/main/key/public.pem)

## **Q14: How does decentralized publication work?**

[Vulnerability-Lookup](https://www.vulnerability-lookup.org/) is a reference open-source software that includes a functional model for using the GCVE.eu GNA directory. It allows each user of Vulnerability-Lookup to select which GNAs to gather vulnerability information from.

This enables GNAs to directly publish their vulnerability information without relying on a centralized system.

There is no complex technology or software involved, it's a standard ReST API, implemented and documented as a Best Current Practice ([BCP-03](/bcp/gcve-bcp-03/)), which can be easily reimplemented by other software solutions.

![Overview of the GCVE GNA publication model](/images/gcve-eu-network.png)

## **Q15: Do you have any logos for GCVE and the GNA?**

For GCVE.eu, there are two sets of logos: one set features the generic logos of the GCVE.eu initiative, and the other is for GNAs — GCVE Numbering Authorities. All logos are available at [https://gcve.eu/logo/](/logo), including both bitmap and vector-based formats.

## **Q16: What is [db.gcve.eu](https://db.gcve.eu/)?**

[db.gcve.eu](https://db.gcve.eu/) is a public and open instance of [vulnerability-lookup](https://vulnerability-lookup.org), providing users with a unified interface to access and correlate vulnerability information from all available GNA sources and other public databases.

We strongly encourage other organizations, in particular **GCVE Numbering Authorities (GNAs)**, to deploy their own instances in order to publish and manage vulnerabilities in a **distributed, federated, and resilient** manner, in line with the GCVE model.
 
