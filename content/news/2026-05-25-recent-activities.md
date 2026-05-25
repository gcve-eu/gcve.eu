---
title: "GCVE recent activities: building a decentralised and operational vulnerability ecosystem"
date: 2026-05-25
author: "GCVE.eu"
description: "A review of GCVE activities and achievements from 25 February to 25 May 2026, including new and revised Best Current Practices, based on public GitHub work and official GCVE publications."
tags:
  - GCVE
  - vulnerability-intelligence
  - open-source
  - KEV
  - CPE
  - AI
---

During the last three months, from **25 February to 25 May 2026**, GCVE has continued moving beyond an identifier-allocation concept into a practical ecosystem for publishing, correlating, enriching and consuming vulnerability information.

The public work visible across the [GCVE GitHub organisation](https://github.com/gcve-eu/) shows several complementary developments:

- a BCP-07-based workflow for converting known-exploited vulnerability information from public sources;
- provenance-aware automated enrichment using VLAI severity classification;
- tooling to make AI-assisted enrichment reproducible and operational;
- a new collaborative CPE curation application;
- improved publication and discoverability of the GNA directory;
- continued maintenance of the core client and documentation.

Taken together, these activities show an ecosystem being built layer by layer: identifiers and authorities, machine-readable assertions, traceable enrichment, and better product-level context.

## At a glance: notable achievements

| Area | Recent achievement | Main repositories |
| --- | --- | --- |
| Best Current Practices | New BCP-09 and BCP-10 drafts; first BCP extension (BCP-05-X-01); updates to BCP-02, BCP-03 and BCP-06 | [`gcve.eu/content/bcp`](https://github.com/gcve-eu/gcve.eu/tree/main/content/bcp) |
| Automated enrichment | Publication of VLAI severity-enriched vulnerability dumps with BCP-05-X-01 provenance annotations | [`gcve-enriched-dumps`](https://github.com/gcve-eu/gcve-enriched-dumps), [`gcve-eu-ai-extension`](https://github.com/gcve-eu/gcve-eu-ai-extension) |
| Known-exploited vulnerabilities | Evolution of the GCVE-BCP-07 converter and adaptation to the ENISA EUKEV JSON feed format | [`gcve-eu-kev`](https://github.com/gcve-eu/gcve-eu-kev) |
| Product/platform context | Launch and rapid maturation of a collaborative CPE Editor with moderation, APIs and vulnerability-reference proposals | [`cpe-editor`](https://github.com/gcve-eu/cpe-editor) |
| GNA visibility | Generation and publication improvements for GNA directory pages and index content | [`gcve-eu-tools`](https://github.com/gcve-eu/gcve-eu-tools), [`gcve.eu-directory`](https://github.com/gcve-eu/gcve.eu-directory), [`gcve.eu`](https://github.com/gcve-eu/gcve.eu) |
| Community engagement | Presentations and workshops conducted across Europe, generating practical feedback on GCVE and Vulnerability-Lookup | GCVE community and reference-implementation users |
| Ecosystem maintenance | Dependency maintenance and continuing website/BCP updates | [`gcve`](https://github.com/gcve-eu/gcve), [`gcve.eu`](https://github.com/gcve-eu/gcve.eu) |

## 1. The BCP series expanded from implementation guidance to ecosystem governance

One of the most important developments during the period is the growth of the GCVE **Best Current Practice (BCP)** series. The BCP repository content is not merely documentation around the project: it describes how decentralized publication, numbering authorities, machine-generated enrichment, product enumeration and downstream consumption can work together in an interoperable way.

The current BCP catalogue in [`gcve.eu/content/bcp`](https://github.com/gcve-eu/gcve.eu/tree/main/content/bcp) lists published or public-review material covering directory signatures, vulnerability handling and disclosure, decentralized publication, allocation, record formats, GNA expectations, KEV assertions, record scope and improved CPE handling. Public discussion and feedback on these practices are also supported through the [GCVE category on ossbase.org](https://discourse.ossbase.org/c/gcve/14), which includes BCP review topics and wider GCVE discussions. During this review window, several of those documents received substantive work.

### BCP-03: refining decentralized publication after coordination work

In March, GCVE updated **BCP-03 — Decentralized Publication Standard** following a coordination meeting in Luxembourg. BCP-03 describes a decentralized model where GNAs publish vulnerability information directly and consumers discover retrieval endpoints through the GCVE directory.

The document specifies an HTTP publication mechanism and references the `gcve_pull_api` field used to discover a GNA's publication endpoint. This work is central to GCVE's operational model: decentralization requires not only independent identifiers, but also a usable and documented way to collect records from multiple authoritative publishers.

Relevant commits include:

- [25 March 2026 — GCVE-BCP-03 update following the coordination meeting](https://github.com/gcve-eu/gcve.eu/commit/17337f600215e8cf92e310b96855188177f381e7)
- [26 March 2026 — follow-up BCP-03 update](https://github.com/gcve-eu/gcve.eu/commit/b83d4fea14a75feea9e46eab6c9b898c892a439b)

### BCP-10: an improved CPE model connected to practical tooling

On **26 April 2026**, GCVE published the first draft of **BCP-10 — Improved Common Platform Enumeration for GCVE**. The BCP is closely connected to the new [`cpe-editor`](https://github.com/gcve-eu/cpe-editor) application and addresses long-standing operational issues in platform naming and curation.

BCP-10 proposes a registry model which remains compatible with existing CPE 2.3 strings while adding:

- deterministic UUIDv5 identities for vendor and product records;
- namespaced metadata, such as `gcve:url` and `gcve:description`;
- structured relationships for synonyms, renames and equivalent records;
- audit-oriented timestamps and approval information;
- synchronization support for vendor, product, CPE, metadata and relationship records.

On **29 April**, the BCP was updated to include `vulnerability_references`, enabling proposals that associate a curated CPE entry with identifiers such as CVE, GCVE or GHSA and with vulnerable-version applicability information.

Relevant commits include:

- [26 April 2026 — BCP-10 first draft published](https://github.com/gcve-eu/gcve.eu/commit/abdab24b7c38020d018532728d91eb0f486d6c11)
- [29 April 2026 — vulnerability references added to BCP-10](https://github.com/gcve-eu/gcve.eu/commit/9ca8fa1788b2059b2fa1d0af2205d4b6d99fb5a2)
- [29 April 2026 — follow-up BCP-10 update](https://github.com/gcve-eu/gcve.eu/commit/10f780c06ce1b278cfd1f96cec070dbc08068223)

### BCP-02: explicitly addressing AI-assisted output review

On **2 May 2026**, **BCP-02 — Practical Guide to Vulnerability Handling and Disclosure** was updated with a recommendation to review AI-assisted outputs. Its current document header records **version 1.7**, published on **2 May 2026**.

This is an important governance complement to the technical enrichment pipeline: using automated severity classification or AI-generated analytical support is most useful when the disclosure and handling practices also explicitly address validation and review expectations.

Relevant commit:

- [2 May 2026 — “Review AI-Assisted Outputs” added as a recommendation](https://github.com/gcve-eu/gcve.eu/commit/d94809b4b5c42e00d409e2184e75e57e06dc2c71)

### BCP-09: defining what a GCVE record may represent

On **17 May 2026**, GCVE added the first draft of **BCP-09 — Scope of a GCVE Record**. The document is dated **20 May 2026**, version **1.0**, and marked as a draft for public review.

BCP-09 is conceptually significant because it clarifies that a GCVE record is not limited to a traditional software vulnerability description. A record may concern vulnerability-related information in software, hardware, firmware, infrastructure or cloud services, and can also represent clarification, remediation, contextualization or correlation information according to a GNA's published record model.

This makes explicit one of GCVE's key decentralization principles: the assigning GNA determines the record semantics within its published operational scope, while consumers must interpret records in that context.

Relevant commit:

- [17 May 2026 — BCP-09 “Scope of a GCVE Record” added](https://github.com/gcve-eu/gcve.eu/commit/53ac126e1ab72fdbda66e60492e0135d0f507b45)

### BCP-05-X-01: the first published BCP extension

On **17 May 2026**, GCVE also added its first BCP extension: **BCP-05-X-01 — AI-Assisted Vulnerability Information Annotation**. The extension is currently published as **version 1.1**, dated **18 May 2026**.

BCP-05-X-01 defines optional but recommended metadata for vulnerability records where AI or automated processing contributed to creation, enrichment, classification or analysis. It supports record-level or field-level annotations and models aspects such as AI contribution level, review status, models used and provenance.

A subsequent commit added the `gna_source` field, allowing annotations to better identify the GNA context associated with an AI-assisted contribution. This extension is directly used by the VLAI severity-enriched dump workflow described below.

Relevant commits include:

- [17 May 2026 — first BCP extension added](https://github.com/gcve-eu/gcve.eu/commit/7596b9c498f7c824e2f83dfc86e56684637cac82)
- [18 May 2026 — `gna_source` added to BCP-05-X-01](https://github.com/gcve-eu/gcve.eu/commit/fb4ecf0a9b68791197fd95985d970897dd572b9c)

### Additional BCP maintenance and a metadata alignment note

The period also includes an update to **BCP-06 — Requirements and Evaluation Criteria for GCVE Numbering Authorities (GNAs)** on **10 March 2026**. Its current header identifies version **1.1** as a draft for public review. On the same date, the BCP landing page was changed from a list to a structured table, making published BCPs, status, versions and PDF/public-review links easier to discover.

The current index lists **BCP-07 — Known Exploited Vulnerability - KEV Assertion Format** as version **2.0**, published for public review, and that BCP is the format implemented by the KEV conversion tooling discussed later in this article.

<!-- Editorial note before publication: there are metadata differences in the current repository. The BCP index lists BCP-03 as version 1.4 dated 2026-03-25, while gcve-bcp-03.md states version 1.5 dated 2026-03-10. The index lists BCP-10 as version 1.0 dated 2026-04-26, while gcve-bcp-10.md states version 1.1 dated 2026-04-29. Align these values upstream or preserve careful wording in the published article. -->

## 2. From automated severity estimation to published enriched data

In April, GCVE published an article on why automated vulnerability intelligence matters in an increasingly distributed ecosystem. The core argument is straightforward: vulnerability publication and enrichment cannot rely on a single central pipeline, especially when the volume and diversity of vulnerability data continue to grow.

The [17 April article](https://github.com/gcve-eu/gcve.eu/blob/main/content/news/2026-04-17-automatic-vulnerability-intelligence.md) explains how GCVE can benefit from automatic severity estimation through VLAI, the Vulnerability-Lookup AI classifier. It also documents a public API endpoint for severity-classification workflows, allowing other tools and platforms to integrate an immediate machine-generated triage signal.

This conceptual positioning became a concrete publication workflow in May.

On **21 May 2026**, GCVE announced the publication of [`gcve-enriched-dumps`](https://github.com/gcve-eu/gcve-enriched-dumps), a repository distributing vulnerability records augmented with **VLAI severity classification**. The corresponding [announcement](https://github.com/gcve-eu/gcve.eu/blob/main/content/news/2026-05-21-gcve-enriched-dumps.md) is deliberately precise about the scope of this enrichment:

- original vulnerability data is preserved;
- a machine-generated severity estimate is added as an extension;
- AI provenance is explicitly represented using **GCVE BCP-05-X-01**;
- the output is intended as an additional triage signal, not a replacement for authoritative scoring or human assessment.

The published enrichment uses fields such as:

```json
x_gcve[].extensions["vlai-severity-enrichment"]
```

and records the provenance annotation under:

```json
x_gcve[].extensions["bcp-05-x-01"].ai_annotations[]
```

This distinction matters. GCVE is not simply adding machine-generated values to vulnerability data: it is also expressing **how** those values were generated, so downstream users can treat automated enrichment transparently and according to their own trust policies.

### Operationalising the pipeline

The repository activity in [`gcve-eu-ai-extension`](https://github.com/gcve-eu/gcve-eu-ai-extension) complements the enriched-dump publication. During May, the tooling gained practical capabilities for running enrichment at scale and in different environments, including:

- local dump-file input support for the VLAI severity dump workflow;
- local VLAI calculation support and metadata recording;
- recording a local model commit hash in the AI annotation version information;
- retry/error handling for temporary server failures and API rate limiting;
- an orchestration script for running the pipeline.

The repository also demonstrates a separate local-LLM workflow for analyst-oriented summaries and recommendations. That workflow is valuable as an example of BCP-05-X-01-compatible AI annotation, but it is distinct from the currently published enriched dumps: **the published dumps focus on VLAI severity classification, not LLM-generated remediation text**.

This is a meaningful achievement for GCVE: automated enrichment is no longer only an architectural idea or demonstration endpoint. It is now associated with reproducible tools, explicit provenance and publicly consumable enriched records.

## 3. Making known-exploited vulnerability assertions interoperable

Known-exploited vulnerability catalogues are a particularly useful signal for defenders, but different feeds can use different schemas, source conventions and update mechanisms. [`gcve-eu-kev`](https://github.com/gcve-eu/gcve-eu-kev) addresses this by converting public CISA and ENISA known-exploited vulnerability data into **GCVE-BCP-07 assertion objects**.

The repository documents support for machine-readable output formats such as NDJSON and JSON arrays, feed output, and integration with Vulnerability-Lookup. Its purpose is not merely to duplicate an upstream catalogue: it preserves attribution and models the information as interoperable GCVE assertions.

Activity during the reviewed period includes:

- a **version 0.3.0** release commit on [20 March 2026](https://github.com/gcve-eu/gcve-eu-kev/commit/33bf13aa88c823de93d388b53b733b0875528881);
- the publication of **v0.5.0** on **22 May 2026**, documented as including support for an ENISA EUKEV JSON format change;
- an implementation update mapping the changed ENISA field names and its `YYYY/MM/DD` date format, visible in the [21 May commit](https://github.com/gcve-eu/gcve-eu-kev/commit/e4319ce757fab6d83d9671e4bc388e3408b0e363).

This work illustrates a practical benefit of open, decentralised vulnerability tooling: when an upstream feed evolves, the converter and its transformation logic can be inspected, updated and reused openly, while the resulting assertions remain attributable and machine-readable.

## 4. CPE Editor: collaborative platform context for vulnerability data

A vulnerability identifier becomes substantially more useful when defenders can reliably relate it to affected products and platform identifiers. In April, the GCVE GitHub organisation added a new component addressing this problem: [`cpe-editor`](https://github.com/gcve-eu/cpe-editor).

The repository began with an initial application skeleton on **6 April 2026** and rapidly evolved into a Flask-based application for browsing, curating and publishing Common Platform Enumeration data. Its current README describes a broad operational feature set:

- browsing and searching vendors, products and CPE entries;
- structured community proposals for additions, edits and relationships;
- a moderation dashboard for accepting or rejecting proposed changes;
- public approved-change history with RSS and Atom feeds;
- a read-only OpenAPI interface and Swagger documentation;
- NVD CPE and CPE Match feed ingestion;
- PURL-to-CPE mapping import;
- portable import/export of curated datasets;
- deterministic UUIDs for stable vendor and product identity;
- proposals relating CPE entries to vulnerability references such as CVE, GCVE and GHSA identifiers.

The development history also shows attention to operational quality: CSRF protection, anonymous-submission rate limiting, API regression tests and a CI workflow were added as the application matured.

CPE Editor adds an important dimension to the broader GCVE effort. Identifiers and enrichment can only take users so far if product naming and platform relationships remain difficult to curate. A moderated, API-accessible mechanism for improving CPE context can help make vulnerability information more usable across tools and organisations.

There will be some additional iteration in the development of CPE Editor and then it will be available next to the [db.gcve.eu service](https://db.gcve.eu/).

## 5. Better visibility and distribution for the GNA directory

The decentralised character of GCVE depends on its **GCVE Numbering Authorities (GNAs)** and on the ability for participants and consumers to discover authoritative directory information.

During May, work in [`gcve-eu-tools`](https://github.com/gcve-eu/gcve-eu-tools), [`gcve.eu-directory`](https://github.com/gcve-eu/gcve.eu-directory) and [`gcve.eu`](https://github.com/gcve-eu/gcve.eu) improved the publication path for directory material.

The directory distribution repository exposes registry-related artefacts including the JSON directory, a signature file, key material and timestamp information. On **22 May**, the tools repository received work to generate GNA Markdown pages and an index from registry data, add front matter, improve table and URL rendering, and correct generated directory routes. Corresponding website commits added the GNA index directory and refreshed the published directory content.

Although less visible than enriched datasets or a new web application, this kind of work is essential infrastructure: decentralisation is operational only when authority information is easy to discover, publish and verify.

## 6. Maintenance and supporting work

Not every useful contribution is a feature launch. During the period, the [`gcve`](https://github.com/gcve-eu/gcve) Python client received dependency updates, including updates to security-relevant dependencies such as `cryptography` and `urllib3`. Its most recent tagged release shown on GitHub predates this review window, so this activity is best described as maintenance rather than a new client release.

The [`gcve.eu`](https://github.com/gcve-eu/gcve.eu) repository also remained the publication point for official announcements and ongoing documentation adjustments, connecting the code repositories with their intended operational use.

## 7. Community engagement and operational feedback

Alongside the visible repository and BCP work, **many presentations and workshops were conducted across Europe during the period**. These exchanges provided valuable feedback from practitioners and stakeholders on the GCVE approach, its decentralized publication model and its developing BCP framework.

The discussions also generated important feedback on **[Vulnerability-Lookup](https://www.vulnerability-lookup.org/)**, the open-source reference implementation supporting several GCVE operational workflows. This direct interaction with users and communities helps connect GCVE's specifications and tooling with practical vulnerability-management requirements, and contributes to the continuous improvement of both the initiative and its reference implementation. The [GCVE public discussion category on ossbase.org Discourse](https://discourse.ossbase.org/c/gcve/14) provides an additional open channel for BCP reviews and ecosystem feedback.

## A short timeline of the period

| Date | Public activity | Repository or publication |
| --- | --- | --- |
| 2026-03-10 | BCP index structured as a publication table; BCP-06 updated | `gcve.eu/content/bcp` |
| 2026-03-20 | Version 0.3.0 release commit for the KEV-to-BCP-07 converter | `gcve-eu-kev` |
| 2026-03-25 to 2026-03-26 | BCP-03 decentralized publication guidance updated following coordination work in Luxembourg | `gcve.eu/content/bcp` |
| 2026-04-06 | Initial CPE Editor skeleton committed; subsequent rapid work on curation, search, API and import functions | `cpe-editor` |
| 2026-04-17 | Article published on automatic vulnerability intelligence and VLAI-based severity support | `gcve.eu` |
| 2026-04-26 | First draft of BCP-10, Improved Common Platform Enumeration for GCVE, published | `gcve.eu/content/bcp` |
| 2026-04-26 to 2026-04-30 | CPE Editor expanded with deterministic identities, public change feeds, vulnerability-reference proposals, API tests and CI; BCP-10 updated accordingly | `cpe-editor`, `gcve.eu/content/bcp` |
| 2026-05-02 | BCP-02 updated with guidance to review AI-assisted outputs | `gcve.eu/content/bcp` |
| 2026-05-17 to 2026-05-20 | BCP-09 draft introduced to define the scope of a GCVE record; BCP-05-X-01 introduced and revised as the first BCP extension | `gcve.eu/content/bcp` |
| 2026-05-20 to 2026-05-22 | AI-extension work improved dump processing, local execution, provenance/reproducibility metadata and runtime resilience | `gcve-eu-ai-extension` |
| 2026-05-21 | Announcement of published VLAI severity-enriched dumps with BCP-05-X-01 provenance | `gcve.eu`, `gcve-enriched-dumps` |
| 2026-05-21 to 2026-05-22 | KEV converter updated for ENISA EUKEV JSON changes; v0.5.0 published | `gcve-eu-kev` |
| 2026-05-22 | GNA directory-generation and website index improvements landed | `gcve-eu-tools`, `gcve.eu-directory`, `gcve.eu` |
| During the period | Presentations and workshops across Europe collected operational feedback on GCVE and the Vulnerability-Lookup reference implementation | Community engagement |

## What this adds up to

The recent GCVE activity is notable because it does not focus on only one layer of the vulnerability ecosystem.

GCVE now visibly connects several complementary building blocks:

1. **Evolving shared practices** through BCPs covering publication, record scope, CPE context, GNA expectations, KEV assertions and AI provenance.
2. **Authority and publication** through GNAs and verifiable directory material.
3. **Interoperable assertions** through BCP-07 transformations of known-exploited vulnerability feeds.
4. **Transparent automated enrichment** through VLAI severity classification and BCP-05-X-01 provenance.
5. **Product and platform context** through collaborative CPE curation and vulnerability-reference proposals.
6. **Community feedback and iteration** through European presentations and workshops engaging practitioners around GCVE and Vulnerability-Lookup.
7. **Open implementation and reuse** through public tools, repositories, APIs and documentation.

The result is a more concrete picture of what decentralised vulnerability management can look like: not simply allocating identifiers, but supporting publication, evidence, context, enrichment and reproducibility across an open ecosystem.

GCVE remains a developing initiative, and machine-generated enrichment should always be interpreted with appropriate caution. Still, the last three months show tangible progress from principles to operational components that can be inspected, reused and improved by the wider community.

## Suggested social-media excerpt

Over the past three months, GCVE has expanded its open BCP series with record-scope, improved CPE and AI-provenance guidance, while advancing BCP-07 KEV conversion, VLAI enriched dumps, collaborative CPE curation and GNA directory publishing. Presentations and workshops across Europe also provided valuable feedback on GCVE and its Vulnerability-Lookup reference implementation.

## Sources reviewed

This article covers public activity observed between **25 February and 25 May 2026**, inclusive. Primary sources consulted include:

- [GCVE GitHub organisation](https://github.com/gcve-eu/)
- [GCVE Best Current Practice directory and index](https://github.com/gcve-eu/gcve.eu/tree/main/content/bcp)
- [GCVE public discussion and BCP review category on ossbase.org Discourse](https://discourse.ossbase.org/c/gcve/14)
- [BCP-02 — Practical Guide to Vulnerability Handling and Disclosure](https://github.com/gcve-eu/gcve.eu/blob/main/content/bcp/gcve-bcp-02.md)
- [BCP-03 — Decentralized Publication Standard](https://github.com/gcve-eu/gcve.eu/blob/main/content/bcp/gcve-bcp-03.md)
- [BCP-06 — Requirements and Evaluation Criteria for GNAs](https://github.com/gcve-eu/gcve.eu/blob/main/content/bcp/gcve-bcp-06.md)
- [BCP-09 — Scope of a GCVE Record](https://github.com/gcve-eu/gcve.eu/blob/main/content/bcp/gcve-bcp-09.md)
- [BCP-10 — Improved Common Platform Enumeration for GCVE](https://github.com/gcve-eu/gcve.eu/blob/main/content/bcp/gcve-bcp-10.md)
- [BCP-05-X-01 — AI-Assisted Vulnerability Information Annotation](https://github.com/gcve-eu/gcve.eu/blob/main/content/bcp/extension/gcve-bcp-05-x-01.md)
- [Automatic vulnerability intelligence in GCVE: why this matters even more now — 17 April 2026](https://github.com/gcve-eu/gcve.eu/blob/main/content/news/2026-04-17-automatic-vulnerability-intelligence.md)
- [Publishing GCVE enriched dumps with VLAI severity classification — 21 May 2026](https://github.com/gcve-eu/gcve.eu/blob/main/content/news/2026-05-21-gcve-enriched-dumps.md)
- [`gcve-enriched-dumps`](https://github.com/gcve-eu/gcve-enriched-dumps)
- [`gcve-eu-ai-extension`](https://github.com/gcve-eu/gcve-eu-ai-extension)
- [`gcve-eu-kev`](https://github.com/gcve-eu/gcve-eu-kev)
- [`gcve-eu-kev` v0.3.0 release commit — 20 March 2026](https://github.com/gcve-eu/gcve-eu-kev/commit/33bf13aa88c823de93d388b53b733b0875528881)
- [`gcve-eu-kev` ENISA EUKEV format adaptation commit — 21 May 2026](https://github.com/gcve-eu/gcve-eu-kev/commit/e4319ce757fab6d83d9671e4bc388e3408b0e363)
- [`cpe-editor`](https://github.com/gcve-eu/cpe-editor)
- [`gcve.eu-directory`](https://github.com/gcve-eu/gcve.eu-directory)
- [`gcve-eu-tools`](https://github.com/gcve-eu/gcve-eu-tools)
- [`gcve`](https://github.com/gcve-eu/gcve)
