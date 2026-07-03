---
title: "GCVE.eu - Best Current Practice (BCP)"
---

## What is a GCVE.eu Best Current Practice (BCP)?

A **Best Current Practice (BCP)** in the context of the **GCVE.eu** project is a community-driven guideline that documents recommended procedures, configurations, or operational principles to support the secure, reliable, and consistent implementation of GCVE-related infrastructure, tools, and services.

While GCVE defines a decentralized vulnerability enumeration system, BCPs ensure alignment and interoperability across participants including GCVE Numbering Authorities (GNAs), users, automation systems, and data consumers.

GCVE BCPs are:

- **Descriptive, not prescriptive**: They capture *what is currently working well in practice*, rather than enforce strict standards.
- **Consensus-based**: Developed with input from the GCVE community and stakeholders.
- **Focused on interoperability and trust**: They promote safe behaviors for exchanging and validating information within the GCVE ecosystem.
- **Evolving**: BCPs are living documents. As practices improve and tools evolve, BCPs are revised to reflect the most effective methods available.

Typical BCP topics include (but are not limited to):

- Cryptographic signature and integrity checks of GCVE directory file
- Naming conventions for GNAs and GCVE identifiers
- Secure publication and synchronization of directory information
- API recommendations and distribute publication scheme

Adhering to GCVE BCPs is not mandatory, but strongly recommended to ensure the safety, usability, and compatibility of your implementation within the broader GCVE network.

## Published BCP

| BCP | Name | Date | Status | Version | Links |
|---|---|---|---|---|---|
| BCP-01 | [Signature Verification of the Directory File](./gcve-bcp-01/) | 2026-03-10 | ✅ Published | 1.2 | [PDF](/files/bcp/gcve-bcp-01.pdf) |
| BCP-02 | [Practical Guide to Vulnerability Handling and Disclosure](./gcve-bcp-02/) | 2026-05-02 | ✅ Published | 1.7 | [PDF](/files/bcp/gcve-bcp-02.pdf) · [Public Review](https://discourse.ossbase.org/t/gcve-bcp-02-practical-guide-to-vulnerability-handling-and-disclosure/) |
| BCP-03 | [Decentralized Publication Standard](./gcve-bcp-03/) | 2026-03-25 | 🌓 Published (for Public Review) | 1.4 | [PDF](/files/bcp/gcve-bcp-03.pdf) |
| BCP-04 | [Recommendations and Best Practices for ID Allocation](./gcve-bcp-04/) | 2026-03-10 | ✅ Published | 1.4 | [PDF](/files/bcp/gcve-bcp-04.pdf) |
| BCP-05 | [GCVE Vulnerability Format (Modified CVE Record Format)](./gcve-bcp-05/) | 2026-03-10 | 🌓 Published (for Public Review) | 1.7 | [PDF](/files/bcp/gcve-bcp-05.pdf) · [Public Review](https://discourse.ossbase.org/t/gcve-bcp-05-drafting-best-practices-for-the-container-format-modified-cve-record-format/) |
| BCP-06 | [Requirements and Evaluation Criteria for GCVE Numbering Authorities (GNAs)](./gcve-bcp-06/) | 2026-03-10 | ✎ Draft (for Public Review) | 1.1 | [PDF](/files/bcp/gcve-bcp-06.pdf) · [Public Review](https://discourse.ossbase.org/t/gcve-bcp-06-drafting-requirements-and-evaluation-criteria-for-gcve-numbering-authorities/732) |
| BCP-07 | [Known Exploited Vulnerability - KEV Assertion Format](./gcve-bcp-07/) | 2026-07-03 | 🌓 Published (for Public Review) | 2.1 | [PDF](/files/bcp/gcve-bcp-07.pdf) · [Public Review](https://discourse.ossbase.org/t/kev-known-exploited-vulnerabilities-potential-format-bcp-07/744) |
| BCP-09 | [Scope of a GCVE Record](./gcve-bcp-09/) | 2026-05-20 | ✎ Draft (for Public Review) | 1.0 | [PDF](/files/bcp/gcve-bcp-09.pdf) · [Public Review](https://discourse.ossbase.org/t/gcve-bcp-09-scope-of-a-gcve-record-early-draft/1041) |
| BCP-10 | [Improved Common Platform Enumeration for GCVE](./gcve-bcp-10/) | 2026-04-26 | ✎ Draft (for Public Review) | 1.0 | [PDF](/files/bcp/gcve-bcp-10.pdf) · [Public Review](https://discourse.ossbase.org/t/gcve-bcp-10-improved-common-platform-enumeration-for-gcve/1042) |

## Extensions

| Extension | Title | Applies To | Description |
|---|---|---|---|
| [GCVE BCP-05-X-01](/bcp/extension/gcve-bcp-05-x-01/) [PDF](/files/bcp/gcve-bcp-05-x-01.pdf) | AI-Assisted Vulnerability Information Annotation | [GCVE BCP-05](/bcp/gcve-bcp-05/) | Defines metadata for annotating vulnerability records where AI or automated processing contributed to creation, enrichment, classification, or analysis. |

## Contributing

GCVE BCP is developed in a transparent process described in [Transparent and Open BCP Development Process for GCVE](/process/).
