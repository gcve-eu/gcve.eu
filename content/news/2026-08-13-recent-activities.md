---
title: "GCVE recent activities: standards, software and a growing GNA community"
date: 2026-08-13
author: "GCVE.eu"
description: "A review of GCVE activities from 26 May to 13 August 2026, including work on BCP-07, draft BCP-11 and BCP-12, Luxembourg–Québec cooperation, the GCVE Lab proposal, Vulnerability-Lookup 5.0, CPE.GCVE.EU and seven new GNAs."
tags:
  - GCVE
  - GNA
  - vulnerability-intelligence
  - open-source
  - KEV
  - CPE
  - sightings
---

Since our [previous review of GCVE activities](https://gcve.eu/2026/05/25/gcve-recent-activities-building-a-decentralised-and-operational-vulnerability-ecosystem/), the project has continued to turn decentralised vulnerability publication into an operational ecosystem.

This review covers **26 May to 13 August 2026**. During this period, the work advanced on three closely connected fronts:

- **standards**, with a revised Known Exploited Vulnerability (KEV) assertion format, updated AI-provenance guidance, draft work on community-proposed updates to existing CVE records and a new vulnerability-sighting format;
- **software and services**, with Vulnerability-Lookup 5.0 and the launch of CPE.GCVE.EU;
- **community growth and cooperation**, with seven additional GCVE Numbering Authorities (GNAs), including vendors, open-source projects and a sectoral coordination organisation, a Luxembourg–Québec cybersecurity partnership involving GCVE, and a proposal for a GCVE Lab within the project.

These are complementary developments. BCPs describe interoperable practices, open-source implementations make those practices usable, and GNAs provide the independent sources that make a decentralised system valuable.

## At a glance: notable achievements

| Area | Achievement | Main resources |
| --- | --- | --- |
| Best Current Practices | BCP-07 advanced to version 2.1; BCP-05-X-01 gained clearer GNA provenance levels; draft BCP-11 explores community-proposed CVE updates; new BCP-12 standardises vulnerability sightings | [GCVE BCP catalogue](https://gcve.eu/bcp/) and [BCP-11 discussion](https://discourse.ossbase.org/t/gcve-bcp-11-community-proposed-updates-to-existing-cve-records/1110) |
| GNA operations | Vulnerability-Lookup 5.0 added an integrated workflow for identifier reservation, advisory preparation and decentralised publication | [Vulnerability-Lookup](https://www.vulnerability-lookup.org/) |
| Product identification | CPE.GCVE.EU launched as a collaborative catalogue for vendors, products, CPEs, PURLs and their relationships | [CPE.GCVE.EU](https://cpe.gcve.eu/) and [`cpe-editor`](https://github.com/gcve-eu/cpe-editor) |
| GNA community | Seven GNAs joined: Exim, Passbolt, OneSpan, CI-ISAC Australia, SUSE, Postiz and GCVE-CVE-Extension | [GNA directory](https://gcve.eu/gna/) |
| KEV ecosystem | The catalogue directory expanded with KEVIntel and The Shadowserver Foundation, including licence metadata | [KEV catalogue references](https://gcve.eu/dist/references.json) |
| International cooperation | Luxembourg and Québec identified GCVE as an initiative for collaboration through their cybersecurity partnership | [Silicon Luxembourg](https://www.siliconluxembourg.lu/luxembourg-quebec-cybersecurity-partnership/) |
| Community experimentation | A GCVE Lab was proposed as part of the project, with its shape and contribution model open for community discussion | [GCVE Lab proposal](https://discourse.ossbase.org/t/gcve-lab-proposal/1117) |
| Project transparency | New open-data, software and community pages, improved directory presentation, research citations and expanded FAQ guidance | [GCVE.eu](https://gcve.eu/) |

## 1. The BCP series now covers exploitation and operational observations

The GCVE Best Current Practice series continued to evolve in response to implementation experience. Two themes stand out in this period: representing claims about exploitation, and exchanging observations that sit alongside a vulnerability record.

### BCP-07 version 2.1: attributable KEV assertions

On **3 July 2026**, [BCP-07 — Known Exploited Vulnerability (KEV) Assertion Format](https://gcve.eu/bcp/gcve-bcp-07/) was updated to **version 2.1**.

BCP-07 keeps an important distinction clear: a vulnerability identifier establishes the identity of a vulnerability, while a KEV entry is an **assertion about exploitation** made by a particular source. Treating KEV information as an attributable assertion allows multiple sources to coexist, including sources with different evidence, observation dates, confidence or scope.

The format retains a small required core while allowing publishers to express useful context, including:

- who made the exploitation claim;
- the asserted status and relevant dates;
- the evidence source and confidence;
- where exploitation was observed;
- remediation deadlines or recommendations where applicable.

The related KEV catalogue directory also grew. **KEVIntel** was added in June, followed by **The Shadowserver Foundation** at the end of June. Subsequent updates recorded known licence information and restored the full list of catalogues in the distributed references file. This makes it easier for consumers to discover sources and understand the conditions under which their data can be reused.

The open-source [`gcve-eu-kev`](https://github.com/gcve-eu/gcve-eu-kev) converter introduced earlier in the year remains the practical bridge for transforming public KEV feeds into interoperable BCP-07 assertions.

### BCP-05-X-01: clearer provenance for AI-assisted contributions

On **14 June 2026**, [BCP-05-X-01 — AI-Assisted Vulnerability Information Annotation](https://gcve.eu/bcp/extension/gcve-bcp-05-x-01/) was revised to clarify **GNA provenance levels**.

The extension describes how vulnerability information can disclose the involvement of AI or automated processing, including the model or system used, its contribution level, review status and provenance. The June update makes the relationship between an AI-assisted contribution and its GNA source more precise. This is important in a decentralised ecosystem: consumers need to distinguish between content produced by the assigning authority, content added by another GNA and enrichment produced by an external system.

The guidance continues to support the transparent enrichment approach used by [`gcve-enriched-dumps`](https://github.com/gcve-eu/gcve-enriched-dumps), where machine-generated VLAI severity estimates are published as additional signals without replacing original records or authoritative human assessment.

### Draft BCP-11: community-proposed updates to existing CVE records

Work also began on **draft BCP-11 — Community-Proposed Updates to Existing CVE Records**. The proposal is [being developed publicly on the GCVE discussion forum](https://discourse.ossbase.org/t/gcve-bcp-11-community-proposed-updates-to-existing-cve-records/1110) and, at the time of this review, is **not yet listed in the published BCP catalogue on GCVE.eu**.

The draft explores how the community can contribute additional information associated with an existing CVE record without presenting that contribution as a modification made by the CVE's original authority. This matters when useful corrections, clarifications, references or other follow-up information become available but cannot readily be incorporated into the original record.

The work is connected to [GNA 65530 — GCVE-CVE-Extension](https://gcve.eu/gna/65530/), a dedicated GNA whose identifiers are intended to remain aligned with the referenced CVE identifiers. Keeping community proposals in a distinct GNA namespace makes their provenance explicit: consumers can correlate the proposed update with the CVE while still distinguishing it from the authoritative source record.

BCP-11 is an early community contribution rather than a published standard. Sharing it through the public discussion process allows implementers, vulnerability coordinators, vendors and data consumers to help refine the model before it is added to the formal BCP catalogue.

### BCP-12: a standard format for vulnerability sightings

On **31 July 2026**, GCVE added [BCP-12 — Sighting Format](https://gcve.eu/bcp/gcve-bcp-12/), followed by its [public announcement](https://gcve.eu/2026/08/01/gcve-bcp-12-a-standard-sighting-format-for-vulnerabilities/) on 1 August.

A sighting is a structured observation connecting a real-world signal to a vulnerability identifier. BCP-12 covers use cases such as:

- a mention or observation of a vulnerability;
- analyst confirmation or rejection;
- publication of a proof of concept;
- observed or explicitly unobserved exploitation;
- successful or unsuccessful patching.

Like BCP-07, BCP-12 models the information as an assertion by a specific observer at a particular time, rather than as a universal fact. Multiple observers can therefore publish complementary—or apparently conflicting—sightings based on their own environments and evidence.

The core schema is deliberately small, while an extension mechanism can carry confidence, evidence, observation scope, affected assets and external identifiers. The format is based on operational experience from [Vulnerability-Lookup](https://www.vulnerability-lookup.org/) and on lessons from sighting models in cyber-threat-intelligence formats, including the [MISP standard](https://www.misp-standard.org/).

Together, the work on BCP-07, draft BCP-11 and BCP-12 addresses three useful, distinct layers around a vulnerability record: **an exploitation assertion**, a **community-proposed update**, and a broader **operational observation**.

## 2. Vulnerability-Lookup 5.0 made GNA workflows more practical

On **29 May 2026**, [Vulnerability-Lookup 5.0.0](https://www.vulnerability-lookup.org/2026/05/29/vulnerability-lookup-5-0-0/) was released. Vulnerability-Lookup is the open-source platform powering [DB.GCVE.EU](https://db.gcve.eu/) and a reference implementation for several GCVE practices.

Version 5.0 is particularly significant for GNAs because it brings identifier management, advisory preparation and publication closer together in one open workflow. Its new CNA-interoperable API supports operations including:

- reserving GCVE identifiers and identifier ranges;
- creating and editing vulnerability records;
- managing record states;
- publishing, rejecting or deleting records;
- synchronising published information with other instances.

Deeper [Vulnogram](https://github.com/Vulnogram/Vulnogram) integration provides a user interface for reservation and advisory preparation. The release supports both CVE JSON 5.2 and the GCVE vulnerability format described in [BCP-05](https://gcve.eu/bcp/gcve-bcp-05/), while its publication model implements the decentralised approach in [BCP-03](https://gcve.eu/bcp/gcve-bcp-03/).

The release also added a KEV-catalogue view, improved recent-sighting presentation, refreshed several user-interface components, and delivered API, Docker, typing, stability and correctness improvements. This is the practical side of the GCVE model: an organisation can operate its own infrastructure and processes while publishing information that other participating systems can discover and synchronise.

## 3. CPE.GCVE.EU connected vulnerability data to products and packages

On **2 June 2026**, GCVE launched [CPE.GCVE.EU](https://cpe.gcve.eu/), a public service for browsing, searching and collaboratively improving vendor, product and Common Platform Enumeration information.

Reliable product naming is a persistent vulnerability-management problem. Vendors merge, products are renamed, aliases emerge, and package ecosystems use identifiers that do not always map cleanly to CPE. Incomplete or inaccurate mappings can lead to both missed matches and false positives.

CPE.GCVE.EU addresses this with:

- browsable vendor, product and CPE records;
- community proposals for additions, corrections and relationships;
- moderation and an auditable approved-change history;
- deterministic UUIDv5 identifiers for reproducible references;
- APIs for integration with external tools;
- links from vendors and products to related records in DB.GCVE.EU;
- relationships between CPE and Package URL (PURL) identifiers.

The service is backed by the open-source [`cpe-editor`](https://github.com/gcve-eu/cpe-editor) project, and its exchange model is documented in [BCP-10](https://gcve.eu/bcp/gcve-bcp-10/). This pairing of a documented format, public service and reusable implementation is representative of the GCVE approach: standards are tested through software, and software produces feedback that can improve the standards.

## 4. Seven new GNAs broadened the network

The GNA directory grew substantially during this review period. Seven new authorities were registered between June and August, bringing different kinds of operational experience into GCVE.

| GNA | Organisation | Joined | Publication or allocation context |
| --- | --- | --- | --- |
| [GNA 121](https://gcve.eu/gna/121/) | Passbolt SA | 15 June | Product security and incident publications |
| [GNA 122](https://gcve.eu/gna/122/) | OneSpan Inc. | 15 June | OneSpan PSIRT publications |
| [GNA 25](https://gcve.eu/gna/25/) | Exim Project | 22 June | Exim security advisories |
| [GNA 123](https://gcve.eu/gna/123/) | CI-ISAC Australia Ltd | 24 June | Allocation, advisory publication and machine-readable dumps |
| [GNA 65530](https://gcve.eu/gna/65530/) | GCVE-CVE-Extension | 13 July | Community-proposed extensions and updates associated with existing CVE records |
| [GNA 124](https://gcve.eu/gna/124/) | SUSE Software Solutions Germany GmbH | 10 August | SUSE security data and CSAF provider metadata |
| [GNA 125](https://gcve.eu/gna/125/) | Postiz | 11 August | Allocation, advisories, API, dumps and a BCP-03 pull endpoint |

This growth is notable not only in numbers but also in diversity. The additions include established software vendors, open-source projects, a password-management vendor, an identity-security vendor and a sectoral information-sharing organisation.

Several entries also expose machine-readable publication or discovery endpoints. CI-ISAC Australia publishes dumps; SUSE exposes CSAF provider metadata; and Postiz publishes an API, dumps and a `gcve_pull_api` endpoint. These capabilities demonstrate how the directory can serve as more than a list of participants: it is also the discovery layer for decentralised publication.

GNA 65530 represents a different use case and provides the namespace associated with the draft BCP-11 work described above. It is reserved for community-proposed information associated with existing CVE identifiers, providing a distinct namespace for extensions without confusing those proposals with the original authority's record.

## 5. Luxembourg–Québec cooperation broadened GCVE's international links

The period also brought an important international dimension to GCVE. As [reported by Silicon Luxembourg](https://www.siliconluxembourg.lu/luxembourg-quebec-cybersecurity-partnership/), Luxembourg and Québec established a cybersecurity partnership that identifies GCVE as one of the initiatives on which their respective ecosystems can collaborate.

The partnership creates an additional bridge between cybersecurity communities in Europe and North America. For GCVE, this kind of cross-border cooperation can help bring more operational perspectives into the project, encourage organisations on both sides of the Atlantic to contribute, and support the wider adoption of open, decentralised approaches to vulnerability coordination and publication.

This complements the growth of the GNA network: GCVE is not only adding individual authorities and publication endpoints, but also becoming a practical subject of cooperation between established cybersecurity ecosystems.

## 6. GCVE Lab: a proposal for experimentation and contribution

The community also published a [proposal for a GCVE Lab](https://discourse.ossbase.org/t/gcve-lab-proposal/1117), which is intended to become part of the wider GCVE project.

The proposal creates a public starting point for discussing how experimental work, prototypes and community contributions can be developed around GCVE. A lab can provide room to explore ideas and gather implementation experience before deciding whether they should become production services, reusable software or input to future BCP work.

At the time of this review, GCVE Lab is a **proposal under discussion**, not a finished service or a published standard. Its scope, organisation and contribution model can therefore be shaped through community feedback. Interested implementers, researchers and vulnerability-management practitioners are encouraged to read and contribute to the [public proposal](https://discourse.ossbase.org/t/gcve-lab-proposal/1117).

This proposed incubation space complements the existing GCVE model: BCPs document practices, operational services implement them, and the Lab can provide a place for earlier-stage ideas and collaborative experiments that may inform both.

## 7. Directory and website improvements made the ecosystem easier to navigate

Growth also requires discoverability. During June, the generated GNA pages were moved to a consistent Markdown-based structure and their index, layout and presentation were improved. The homepage now links more clearly to the directory, and signed directory artefacts continued to be refreshed as authorities and references changed.

The wider site received a substantial usability and transparency refresh, including:

- a redesigned, wider homepage and clearer navigation;
- an expanded [software catalogue](https://gcve.eu/software/) describing the project's open-source components;
- a new [open-data page](https://gcve.eu/opendata/) collecting reusable GCVE datasets and feeds;
- a new [community and governance page](https://gcve.eu/who/) presenting coordination and community-board information;
- related research citations and improved BCP page presentation;
- updated [FAQ guidance](https://gcve.eu/faq/) covering the current BCP ecosystem and how disputes are handled.

These changes are supporting infrastructure rather than a new protocol, but they matter. A decentralised project needs clear routes to its standards, implementations, data, participants and governance just as much as it needs machine-readable endpoints.

## 8. What these developments mean for GCVE

The period from late May to mid-August shows GCVE maturing across the full publication chain:

1. **GNAs can allocate and manage identifiers** using open workflows in Vulnerability-Lookup.
2. **Advisories can be published and synchronised** using interoperable formats and decentralised endpoints.
3. **Products can be identified and curated** through CPE.GCVE.EU, with bridges to PURL and vulnerability data.
4. **Automated enrichment can disclose its provenance** through BCP-05-X-01.
5. **Exploitation claims, community-proposed CVE updates and operational observations can travel separately from the base record** through BCP-07, draft BCP-11 and BCP-12.
6. **Consumers can discover a growing set of independent authorities and feeds** through the signed GNA directory.
7. **Experimental ideas and community contributions have a proposed incubation path** through GCVE Lab.
8. **International partners have a new route for cooperation around GCVE** through the Luxembourg–Québec cybersecurity partnership.

No single component provides the whole ecosystem. The value comes from their combination: autonomous authorities, open standards, reusable software, traceable assertions and accessible public data.

## 9. Participate and provide feedback

GCVE's BCPs and proposals are shaped by implementation and public review. Contributions to the [draft BCP-11 discussion](https://discourse.ossbase.org/t/gcve-bcp-11-community-proposed-updates-to-existing-cve-records/1110), feedback on the [BCP-12 public review](https://discourse.ossbase.org/t/gcve-bcp-12-sighting-format/1085/6), and ideas for the [GCVE Lab proposal](https://discourse.ossbase.org/t/gcve-lab-proposal/1117) are especially welcome. Wider GCVE discussions take place in the [GCVE category on ossbase.org](https://discourse.ossbase.org/c/gcve/14).

Organisations and projects can participate by:

- reviewing or implementing a [GCVE BCP](https://gcve.eu/bcp/);
- contributing to the [GCVE Lab proposal](https://discourse.ossbase.org/t/gcve-lab-proposal/1117);
- contributing to the [open-source projects](https://github.com/gcve-eu/);
- proposing improved product mappings at [CPE.GCVE.EU](https://cpe.gcve.eu/);
- consuming the [open datasets and feeds](https://gcve.eu/opendata/);
- applying to become a [GCVE Numbering Authority](https://gcve.eu/about/#eligibility-and-process-to-obtain-a-gna-id).

The last eleven weeks have added standards, practical software and new publishers. The next stage is broader implementation: more independent publication endpoints, more interoperable assertions and sightings, and continued feedback from the organisations using GCVE in real vulnerability-handling workflows.
