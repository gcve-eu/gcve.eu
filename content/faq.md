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

A: A GCVE ID uses a four-part format: `GCVE-<GNA ID>-<YEAR>-<UNIQUE ID>`.
*   `GCVE`: Standard prefix.
*   `GNA ID`: An identifier assigned to the GNA, unique for that GNA.
*   `YEAR`: The year of disclosure or allocation.
*   `UNIQUE ID`: The unique numeric identifier of the GNA that assigned the ID.

## **Q6: What are the main benefits of using the GCVE system?**

A: The key benefits include:
*   **Decentralized Allocation:** GNAs manage their own ID assignments.
*   **Policy Flexibility:** GNAs can operate under their own guidelines.
*   **Scalability:** Helps avoid bottlenecks found in centralized systems.
*   **Compatibility:** Seamlessly integrates existing CVEs via `GNA ID 0`.

## **Q7: Who is the first GNA using this model?**

A: CIRCL (Computer Incident Response Center Luxembourg) is the first organization assigned a GNA ID (`GNA ID 1`) to use the new GCVE allocation model. `GNA ID 0` is reserved for mapping existing CVEs.

## **Q8: Where can I find the official list of GNAs?**

A: The official registry, including a list of GNAs and their IDs, is maintained at [https://gcve.eu](https://gcve.eu).

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


