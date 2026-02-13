---
title: GCVE - Software
---

[GCVE BCP](/bcp) defines different standards that are implemented in open-source software to support GCVE publication processes and operations.

# Software

## Reference Software Implementation of the GCVE Standard

{{< cards >}}
  {{< card link="about" title="vulnerability-lookup" image="https://vulnerability.circl.lu/static/img/VL-hori-coul.png" link="https://www.vulnerability-lookup.org/" >}}
{{< /cards >}}

The Vulnerability-Lookup software is a powerful open-source sharing platform that assists security teams, researchers, and system administrators in identifying, tracking, and publishing vulnerabilities. Vulnerability-Lookup implements all the required [GCVE BCP](/bcp) standards to operate a GNA.

{{% details title="Details" %}}
- {{< icon "github" >}} [https://github.com/vulnerability-lookup/vulnerability-lookup](https://github.com/vulnerability-lookup/vulnerability-lookup)
{{% /details %}}

## Software Supporting the GCVE BCP Standards

### BCP-07 Known Exploited Vulnerability (KEV)

{{< cards >}}
  {{< card link="about" title="gcve-eu-kev" subtitle="GCVE-BCP-07 Known Exploited Vulnerability (KEV) conversion tool." link="https://github.com/gcve-eu/gcve-eu-kev" image="https://gcve.eu/logos/gcve.png">}}
{{< /cards >}}

Python script that downloads the CISA Known Exploited Vulnerabilities (KEV) Catalog/ENISA CNW EUVD KEV (CSV) and converts each entry into a GCVE-BCP-07 Known Exploited Vulnerability (KEV) Assertion JSON object.

The goal is to transform a list-based KEV feed into attributable, structured exploitation assertions suitable for ingestion into GCVE-compatible systems, vulnerability databases, or analytical pipelines.

{{% details title="Details" %}}
- {{< icon "github" >}} [https://github.com/gcve-eu/gcve-eu-kev](https://github.com/gcve-eu/gcve-eu-kev)
{{% /details %}}

### GCVE BCP Validators and Schemas

{{< cards >}}
  {{< card link="about" title="bcp-validator" subtitle="Validators and JSON Schemas for GCVE Best Current Practices (BCPs)." link="https://github.com/gcve-eu/bcp-validator" image="https://gcve.eu/logos/gcve.png">}}
{{< /cards >}}

This repository contains validators and JSON Schemas for GCVE Best Current Practices (BCPs).

Its goal is to provide practical, implementation-oriented tooling to help producers, consumers, and integrators validate GCVE-related data structures in a consistent and interoperable way.

{{% details title="Details" %}}
- {{< icon "github" >}} [https://github.com/gcve-eu/bcp-validator](https://github.com/gcve-eu/bcp-validator)
{{% /details %}}


### Client for the Global CVE Allocation System

#### Python

{{< cards >}}
  {{< card link="about" title="gcve" subtitle="A Python client for the Global CVE Allocation System" link="https://github.com/gcve-eu/gcve" image="https://gcve.eu/logos/gcve.png">}}
{{< /cards >}}
This `gcve` client can be integrated into software such as Vulnerability-Lookup to provide core GCVE functionalities by adhering to the Best Current Practices and provides a command-line to query the GCVE GNA directory.

{{% details title="Details" %}}
- {{< icon "github" >}} [https://github.com/gcve-eu/gcve](https://github.com/gcve-eu/gcve)
{{% /details %}}





