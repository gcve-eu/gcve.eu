---
title: "GCVE BCP-07 v3.0: From KEV to NKEV - No Known Exploitable Vulnerability (NKEV) assessments"
date: 2026-10-05
author: "GCVE.eu"
description: "We are pleased to announce the publication of GCVE BCP-07 version 3.0, extending the Known Exploited Vulnerability (KEV) Assertion Format with support for No Known Exploitable Vulnerability (NKEV) assessments."
tags:
  - GCVE
  - BCP
  - KEV
  - CRA 
---

We are pleased to announce the publication of **[GCVE BCP-07 version 3.0](https://gcve.eu/bcp/gcve-bcp-07/)**, extending the *Known Exploited Vulnerability (KEV) Assertion Format* with support for **No Known Exploitable Vulnerability (NKEV) assessments**. BCP-07 was initially designed to provide a structured, open and federated way to express exploitation assertions, including who made the assertion, when exploitation was observed or declared, what evidence supports it, and with what level of confidence. Version 3.0 keeps this KEV model intact while adding a complementary, product-oriented mechanism to assess whether known vulnerabilities are exploitable in a specific product context.

The distinction between **KEV and NKEV is fundamental**. A KEV assertion states that a producer has observed or otherwise asserts exploitation of a vulnerability. An NKEV assessment approaches the problem from a different direction: a specific product or product version is evaluated against explicitly identified vulnerability knowledge sources to determine whether known vulnerabilities are exploitable in the assessed context. The assessment takes into account the product, its configuration, the defined assessment scope, the knowledge sources consulted and a precise knowledge cut-off time. Its result can be `pass`, `fail` or `inconclusive`, making both the outcome and its limitations explicitly machine-readable.

**NKEV is therefore not the logical opposite of KEV, but its [operational complement](https://db.gcve.eu/kev-catalogs).** The absence of a vulnerability from a KEV catalogue does not demonstrate that a product has no known exploitable vulnerabilities, and an NKEV `pass` MUST NOT be inferred simply because no KEV assertion exists. Conversely, the existence of a KEV assertion does not automatically establish that the vulnerability is applicable or exploitable in every product containing the affected component. NKEV provides an assessment layer where applicability, configuration, mitigations and product-specific exploitability can be evaluated. A `pass` consequently means that no known exploitable vulnerability was identified **within the declared scope, knowledge sources, configuration and knowledge cut-off time**—not that the product is permanently vulnerability-free or automatically compliant with a legal or regulatory framework.

With BCP-07 version 3.0, the objective is to provide a common machine-readable language for these two complementary aspects of vulnerability exploitation knowledge: **KEV records attributable assertions about exploitation, while NKEV records the result of assessing a product against available vulnerability knowledge**. NKEV can incorporate evidence from BCP-07 KEV catalogues, VEX statements, vendor or upstream advisories, vulnerability databases, CSIRT information and other relevant sources while preserving the provenance, scope and timing of the assessment. We would also like to warmly thank all the **Vulnopticon participants and the participants of the GCVE workshop in Luxembourg** for the extensive discussions, questions and constructive feedback. These exchanges around real-world vulnerability management helped sharpen the distinction between KEV and NKEV and contributed directly to the thinking behind this evolution of [BCP-07](https://gcve.eu/bcp/gcve-bcp-07/).


