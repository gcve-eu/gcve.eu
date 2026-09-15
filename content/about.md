---
title: About GCVE
description: "About the GCVE initiative, its decentralised identifier system, open standards, services, and community."
---

# About GCVE

The **Global CVE (GCVE)** initiative is an open, decentralised approach to vulnerability identification, publication, and exchange. It gives participating organisations autonomy over identifier allocation and disclosure while retaining a simple mapping for existing CVE identifiers.

GCVE is operated by [CIRCL — Computer Incident Response Center Luxembourg](https://www.circl.lu/) and developed in the open with vulnerability coordinators, vendors, researchers, tool developers, and data consumers. CIRCL also maintains [Vulnerability-Lookup](https://www.vulnerability-lookup.org/), the open-source platform that powers GCVE services and provides a reference implementation of several GCVE practices.

<div class="gcve-hero-actions">
  <a class="gcve-button gcve-button-primary" href="/gna/">Explore the GNA directory</a>
  <a class="gcve-button gcve-button-secondary" href="/bcp/">Read the GCVE BCPs</a>
</div>

## How GCVE works

A **GCVE Numbering Authority (GNA)** is an autonomous participant authorised to allocate GCVE identifiers. Each GNA receives a unique numeric namespace and can define its own vulnerability-identification and disclosure policy without requesting identifier blocks from a central allocation authority.

The identifier starts with the authority's namespace:

`GCVE-<GNA-ID>-<GNA-VALUE>`

A commonly used form is `GCVE-<GNA-ID>-<YEAR>-<UNIQUE-ID>`. For example, `GCVE-1-2025-00001` belongs to GNA 1. Existing CVE identifiers map directly into the reserved GNA 0 namespace: `CVE-2023-40224` becomes `GCVE-0-2023-40224`.

This model provides:

- **Autonomy:** GNAs allocate and publish identifiers at their own pace and under their own policies.
- **Interoperability:** shared formats and discovery mechanisms allow independently operated systems to exchange data.
- **Scalability:** allocation does not depend on a central block-distribution workflow.
- **Compatibility:** existing CVE identifiers retain an unambiguous representation through GNA 0.
- **Provenance:** the GNA namespace makes the source of an identifier explicit.

Detailed allocation recommendations are available in [GCVE-BCP-04](/bcp/gcve-bcp-04/). The current authorities, their public endpoints, and their individual profiles are maintained in the [GNA directory](/gna/), where the complete directory can also be downloaded as JSON.

## From identifiers to an operational ecosystem

GCVE has grown beyond identifier allocation into a set of open practices, software, data, and public services. These components are designed to work together while remaining independently reusable.

### Best Current Practices

The [GCVE Best Current Practice catalogue](/bcp/) documents the community's shared approaches to:

- directory signing and verification;
- vulnerability handling and disclosure;
- decentralised publication and identifier allocation;
- the GCVE vulnerability record format;
- GNA requirements and evaluation;
- Known Exploited Vulnerability (KEV) assertions;
- record scope, improved product enumeration, and vulnerability sightings;
- transparent provenance for AI-assisted annotations and patch-derived vulnerability information.

Each document is clearly marked as published, under public review, or in draft. BCPs are living, community-developed guidance rather than a centrally imposed policy. The [open BCP development process](/process/) explains how proposals are discussed and improved.

### Public services

<div class="gcve-software-grid">
  <article class="gcve-tool-card">
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">Vulnerability intelligence</p>
      <h3>DB.GCVE.EU</h3>
      <p>A public Vulnerability-Lookup instance for searching, correlating, and exploring vulnerability information from GCVE and many other sources. It also demonstrates decentralised GNA publication, sightings, comments, bundles, and KEV data in an operational service.</p>
      <div class="gcve-tool-actions"><a class="gcve-button gcve-button-primary" href="https://db.gcve.eu/">Open DB.GCVE.EU</a></div>
    </div>
  </article>
  <article class="gcve-tool-card">
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">Products and packages</p>
      <h3>CPE.GCVE.EU</h3>
      <p>A collaborative catalogue for vendors, products, CPEs, PURLs, and their relationships. It supports browsable records, community proposals, moderated changes, deterministic identifiers, and API-based reuse using the model described in GCVE-BCP-10.</p>
      <div class="gcve-tool-actions"><a class="gcve-button gcve-button-primary" href="https://cpe.gcve.eu/">Open CPE.GCVE.EU</a></div>
    </div>
  </article>
</div>

Both services are backed by open-source software. See the [software catalogue](/software/) for Vulnerability-Lookup, the CPE editor, GCVE utilities, schemas, and related projects, or browse [GCVE open data](/opendata/) for machine-readable dumps and enriched data sets.

## Participate as a GNA

Existing CVE Numbering Authorities, recognised CSIRTs and CERTs, and organisations that regularly publish vulnerability information may be eligible for a GNA ID. Applicants should maintain a public disclosure policy or publication source and be prepared to provide the relevant organisation and machine-readable endpoint metadata.

The complete eligibility criteria, requested metadata, and application steps are on [Publishing Vulnerability Information](/publishing-vulnerability-information/). GNA requests can be sent to **gna@gcve.eu**.

## Community, governance, and citation

GCVE develops its practices transparently and welcomes review, implementation feedback, and contributions. Learn about the people and governance around the initiative on the [community page](/who/), join the discussion on the [GCVE forum](https://discourse.ossbase.org/c/gcve/14), or [contact the project](/contact/).

For the history and relationship between GCVE, Vulnerability-Lookup, and other vulnerability databases, see the [FAQ](/faq/#q12-what-is-the-relationship-between-the-open-source-vulnerability-lookup-project-the-euvd-european-union-vulnerability-database-and-gcveeu). If you reference the initiative in academic, technical, or operational work, please use the recommended entry on the [citation page](/citation/).
