---
title: FAQ
toc: true
---

# GCVE Frequently Asked Questions (FAQ)

GCVE is an evolving, community-driven initiative. This FAQ provides a practical overview of the allocation model, publication mechanisms, Best Current Practices (BCPs), software, and public services. For normative or implementation-specific details, consult the [BCP index](/bcp/), the [GNA directory](/gna/), and the individual GNA publication policies.

## Core concepts and identifiers

### Q1: What is GCVE?

GCVE (Global CVE Allocation System) is an open, decentralized approach to identifying, numbering, publishing, and exchanging vulnerability-related information.

It is designed to improve flexibility, scalability, resilience, and autonomy while remaining interoperable with the existing CVE ecosystem. GCVE is built around independent **GCVE Numbering Authorities (GNAs)** and machine-readable Best Current Practices.

### Q2: How is GCVE different from the traditional CVE system?

The primary difference is decentralization.

In GCVE, each GNA:

- receives a unique numeric identifier;
- allocates identifiers within its own namespace;
- defines and publishes its operational scope and policies;
- can publish vulnerability information directly from its own infrastructure.

GCVE does not require a central authority to pre-allocate identifier blocks or adjudicate every disagreement. Consumers can choose which GNAs and data sources they trust and synchronize.

### Q3: What is a GCVE Numbering Authority (GNA)?

A GNA is an entity authorized to allocate GCVE identifiers and publish associated records according to its own scope, governance, disclosure model, and data model.

A GNA can be a vendor, an open source project, a CSIRT or CERT, a vulnerability database, a research organization, or another eligible vulnerability publisher. Each GNA is assigned a unique numeric ID that forms part of its GCVE identifiers.

### Q4: Does GCVE replace existing CVE IDs? How does compatibility work?

No. GCVE does not replace CVE.

The reserved **GNA ID 0** maps CVE identifiers into the GCVE namespace. For example:

- `CVE-2023-40224`
- `GCVE-0-2023-40224`

These two forms refer to the same CVE identifier. The mapping provides a consistent namespace for correlation, but software may still need explicit support for parsing and displaying the `GCVE-0-...` syntax.

GCVE records can also reference CVE, GHSA, vendor advisory, or other vulnerability identifiers through explicit relationships.

### Q5: What is the format of a GCVE identifier?

The recommended format is:

```text
GCVE-<GNA-ID>-<YEAR>-<UNIQUE-ID>
```

Example:

```text
GCVE-1-2026-12345
```

| Field | Description |
|---|---|
| `GCVE` | Prefix identifying the GCVE namespace |
| `GNA-ID` | Numeric identifier of the assigning GNA |
| `YEAR` | Year used by the assigning GNA |
| `UNIQUE-ID` | Value that is unique within the GNA namespace |

GNAs may use an alternative value structure when needed:

```text
GCVE-<GNA-ID>-<GNA-VALUE>
```

The value must use printable 7-bit characters without spaces. Implementations should support identifiers up to 255 characters. The generic validation expression is:

```text
^GCVE-[0-9]+-[\x22-\x7E]+$
```

See [GCVE-BCP-04 — Recommendations and Best Practices for ID Allocation](/bcp/gcve-bcp-04/).

### Q6: What are the main benefits of using the GCVE system?

The main benefits are:

- **Autonomy:** GNAs allocate identifiers and operate according to their own declared policies.
- **Distributed publication:** vulnerability records can be published directly by their producers.
- **Interoperability:** CVE records and other identifiers can be mapped and cross-referenced.
- **Resilience:** the ecosystem does not depend on a single publication database or workflow.
- **Multiple perspectives:** complementary, updated, disputed, or constituency-specific records can coexist.
- **Extensibility:** BCPs define formats for records, relationships, KEV assertions, CPE data, AI provenance, and other operational needs.
- **Open implementation:** the reference software, schemas, clients, and supporting tools are open source.

## GNAs and participation

### Q7: Who is the first GNA using this model?

**CIRCL (Computer Incident Response Center Luxembourg)** is GNA 1 and was the first organization to operate the GCVE allocation model.

GNA 0 is reserved for CVE mapping and is not an independent allocator.

### Q8: Where can I find the official list of GNAs?

The human-readable directory is available on the [GNA directory page](/gna/).

The machine-readable directory is published at:

- [GCVE GNA directory JSON](/dist/gcve.json)
- [Directory signature](/dist/gcve.json.sigsha512)
- [GCVE public signing key](/dist/key/public.pem)

The JSON directory is the discovery mechanism for GNA metadata, publication endpoints, APIs, dumps, and allocation services.

### Q9: Is there software that supports GCVE?

Yes. The open-source [software page](/software/) lists reference and supporting implementations, including:

- **[Vulnerability-Lookup](https://www.vulnerability-lookup.org/):** reference implementation for operating a GNA, allocating identifiers, publishing records, synchronizing sources, and performing vulnerability lookup.
- **gcve:** Python library and command-line client for retrieving and verifying the GNA directory.
- **bcp-validator:** JSON Schemas and validators for GCVE BCP data structures.
- **cpe-editor:** collaborative vendor, product, CPE, metadata, and relationship curation.
- **gcve-eu-kev:** conversion tooling for BCP-07 KEV assertions.
- **gcve-eu-ai-extension:** tooling for AI-assisted enrichment with BCP-05-X-01 provenance metadata.

![GCVE integrated in a CVE view in Vulnerability-Lookup](/images/usage.png)

### Q10: How can my organization become a GNA?

The current eligibility criteria include:

- an existing CNA recognized by the CVE Program;
- a CSIRT or CERT listed by FIRST, participating in the EU CSIRTs Network, or belonging to TF-CSIRT;
- a software, hardware, or service provider that regularly publishes vulnerabilities affecting its own products or services and has an official CPE vendor name;
- another organization with a public vulnerability disclosure policy and a public source publishing new vulnerability records in [GCVE-BCP-05 format](/bcp/gcve-bcp-05/).

Send a request to `gna@gcve.eu` with the organization name and the directory metadata described on the [About page](/about/#eligibility-and-process-to-obtain-a-gna-id).

You do not need to be a GNA to consume GCVE data, use the software, participate in BCP discussions, or run a local Vulnerability-Lookup instance. A GNA ID is required to allocate identifiers in an official GCVE namespace.

### Q11: What information is available about GNAs on the gcve.eu website?

The [GCVE directory JSON](/dist/gcve.json) includes the GNA ID, short name, full name, timestamps, and optional operational metadata such as:

- `cpe_vendor_name`
- `gcve_url`
- `gcve_api`
- `gcve_dump`
- `gcve_allocation`
- `gcve_pull_api`

Not every GNA exposes every field. A GNA may use different publication mechanisms depending on its operational model.

## Ecosystem, publication, and trust

### Q12: What is the relationship between the open source vulnerability-lookup project, the EUVD (European Union Vulnerability Database), and GCVE.eu?

**Vulnerability-Lookup** is an open-source vulnerability-management and publication platform developed and maintained by CIRCL. It is the reference implementation for several GCVE workflows, including GNA operations, decentralized publication, synchronization, and record enrichment.

**GCVE.eu** defines the decentralized identifier, directory, publication, and BCP ecosystem. It is a separate initiative led by CIRCL and shaped through open community contributions.

**db.gcve.eu** is a public Vulnerability-Lookup instance that aggregates and correlates GCVE/GNA and other public vulnerability sources.

The **European Union Vulnerability Database (EUVD)** is operated by ENISA. Vulnerability-Lookup has also been used as open-source infrastructure in the broader European vulnerability ecosystem. GCVE, EUVD, and Vulnerability-Lookup have distinct roles, even where their tooling, data, and operational communities interact.

### Q13: Is the JSON file distributed by GCVE signed, and how can the signature be verified?

Yes. The GNA directory is signed with an RSA key and SHA-512.

The required files are:

- [Directory JSON](/dist/gcve.json)
- [Base64-encoded SHA-512 signature](/dist/gcve.json.sigsha512)
- [Public key](/dist/key/public.pem)

The public key is also published through the `_key.gcve.eu` DNS TXT record and in the GCVE directory repository.

Consumers should verify the signature before trusting or automatically ingesting directory content. See [GCVE-BCP-01 — Signature Verification of the Directory File](/bcp/gcve-bcp-01/) for the verification procedure and tooling.

### Q14: How does decentralized publication work?

Each GNA controls its own publication infrastructure. The GCVE directory advertises the GNA entry points, and consumers decide which sources to retrieve and trust.

[GCVE-BCP-03](/bcp/gcve-bcp-03/) defines two lightweight HTTP publication mechanisms:

- a REST endpoint, normally exposed under `/api/gcve/publication`;
- a static newline-delimited JSON dump, normally exposed as `/dumps/gna-<GNA-ID>.ndjson`.

Published records use the [GCVE-BCP-05 format](/bcp/gcve-bcp-05/). Vulnerability-Lookup provides the reference implementation for both publishing and collecting GNA records.

![Overview of the GCVE GNA publication model](/images/gcve-eu-network.png)

### Q15: Do you have any logos for GCVE and the GNA?

Yes. The [logo page](/logo/) provides GCVE initiative and GNA logos in bitmap and vector formats.

### Q16: What is db.gcve.eu?

[db.gcve.eu](https://db.gcve.eu/) is a public and open instance of Vulnerability-Lookup. It provides a unified interface for searching, correlating, and exploring vulnerability information from GCVE GNAs and other public sources.

It is a useful public service and reference deployment, but it is not intended to become the single authoritative database for GCVE. GNAs and other organizations are encouraged to operate their own publication and collection infrastructure.

### Q17: How do you deal with disputes?

GCVE does not attempt to eliminate disagreement through a central adjudication authority. Different GNAs may reach different conclusions about validity, impact, affected products, severity, exploitation, or remediation.

The model handles disagreement through:

- source attribution;
- independently published records and assertions;
- explicit cross-references and relationships such as `equal`, `not equal`, `subset`, `superset`, `overlap`, `opposes`, and `not_applicable`;
- transparent GNA policies and operational metadata;
- consumer choice over which sources to trust.

Disagreement is therefore represented as structured, attributable information rather than silently overwritten. GNAs should cross-reference related records whenever possible.

## Best Current Practices and extensions

### Q18: What is a GCVE Best Current Practice (BCP), and is it mandatory?

A GCVE BCP is a community-developed document describing recommended formats, procedures, operational principles, or interoperability practices.

BCPs are:

- descriptive rather than centrally imposed;
- developed through public discussion and review;
- focused on interoperability, transparency, and trust;
- living documents that can evolve with implementation experience.

Following a BCP is not universally mandatory, but it is strongly recommended. Individual BCPs may use normative language for implementations claiming compatibility with that specific document. Always check the [BCP index](/bcp/) for the current version and status.

### Q19: Which GCVE BCPs are currently available?

The public BCP series currently covers:

- **[BCP-01](/bcp/gcve-bcp-01/):** signature verification of the GNA directory.
- **[BCP-02](/bcp/gcve-bcp-02/):** practical vulnerability handling and coordinated disclosure guidance.
- **[BCP-03](/bcp/gcve-bcp-03/):** decentralized publication and synchronization.
- **[BCP-04](/bcp/gcve-bcp-04/):** identifier allocation and syntax.
- **[BCP-05](/bcp/gcve-bcp-05/):** GCVE vulnerability record format.
- **[BCP-06](/bcp/gcve-bcp-06/):** transparency and evaluation criteria for GNAs.
- **[BCP-07](/bcp/gcve-bcp-07/):** attributable Known Exploited Vulnerability assertions and source indexes.
- **[BCP-09](/bcp/gcve-bcp-09/):** scope and semantics of GCVE records.
- **[BCP-10](/bcp/gcve-bcp-10/):** improved vendor, product, CPE, metadata, and relationship enumeration.

The series also supports extensions, including **[BCP-05-X-01](/bcp/extension/gcve-bcp-05-x-01/)** for AI-assisted vulnerability information annotation.

Some documents are published, some are published for public review, and some remain drafts. The [BCP index](/bcp/) is the source of truth for their current status.

### Q20: What does GCVE-BCP-05 define?

[GCVE-BCP-05](/bcp/gcve-bcp-05/) defines a vulnerability record format derived from the CVE JSON v5 Record Format.

It preserves compatibility with established CVE tooling while adding GCVE-specific metadata such as:

- `vulnId`
- `recordType`
- `relationships`
- extension namespaces

Record types include `advisory`, `update`, `analysis`, `metadata`, `reference`, `comment`, `statement`, `remediation`, `deprecation`, `detection`, `translation`, and `bundle`.

Relationships allow a record to state how it relates to another GCVE, CVE, vendor advisory, or external identifier.

### Q21: Is a GCVE record limited to a traditional vulnerability advisory?

No.

[GCVE-BCP-09](/bcp/gcve-bcp-09/) clarifies that a GCVE record is a GNA-assigned object containing vulnerability-related information. Depending on the GNA model, it may represent:

- a software, hardware, firmware, infrastructure, cloud, or service vulnerability;
- a clarification or correction;
- remediation or mitigation guidance;
- a downstream, product-specific, or deployment-specific impact statement;
- a correlation or relationship record;
- other documented vulnerability-related context.

Consumers should interpret a record according to its assigning GNA, `recordType`, declared relationships, and published record model.

### Q22: Can several GCVE records or identifiers refer to the same vulnerability?

Yes. This is an intentional feature of the decentralized model.

Different GNAs may independently identify the same issue, publish complementary context, represent downstream impact, disagree about scope, or add remediation and analytical material. There is no requirement for one globally authoritative record for every vulnerability.

GNAs should use explicit relationships and cross-references so consumers can correlate equivalent, overlapping, narrower, broader, or conflicting records.

### Q23: What is the GCVE Known Exploited Vulnerability format?

[GCVE-BCP-07](/bcp/gcve-bcp-07/) defines a structured format for **KEV assertions**.

A KEV assertion is separate from the vulnerability identity. It expresses who claims that exploitation occurred, when it was observed or asserted, the supporting evidence, scope, and confidence.

Multiple organizations may publish different or even conflicting KEV assertions for the same vulnerability. These assertions are attributable statements, not universal ground truth, and may be revised or withdrawn as evidence changes.

The non-mandatory [KEV source index](/dist/references.json) helps consumers discover KEV catalogues, machine-readable feeds, stable source UUIDs, and available licensing metadata.

### Q24: What is cpe.gcve.eu and how does it relate to BCP-10?

[cpe.gcve.eu](https://cpe.gcve.eu/) is a public collaborative service for browsing and curating vendors, products, CPE entries, metadata, and relationships.

[GCVE-BCP-10](/bcp/gcve-bcp-10/) describes the corresponding improved enumeration model. It retains CPE 2.3 compatibility while adding stable UUIDv5 identifiers, aliases, renames, lifecycle relationships, namespaced metadata, provenance, moderation, and portable synchronization data.

The open-source implementation is available as **cpe-editor**.

### Q25: How does GCVE identify AI-assisted vulnerability information?

[GCVE-BCP-05-X-01](/bcp/extension/gcve-bcp-05-x-01/) defines optional annotations for records or fields created, enriched, transformed, or classified with AI or automated processing.

The extension records information such as:

- whether AI use was assisted, augmented, or generated;
- which record or field was affected;
- the model and provider, when known;
- the responsible GNA;
- whether the output received no, partial, or full human review;
- relevant taxonomy-aligned tags.

The objective is transparency and provenance, not an assertion that AI-generated content is authoritative.

### Q26: What is GNA 65530 and the proposed BCP-11?

[GNA 65530 — GCVE-CVE-Extension](/gna/65530/) is reserved for publishing community-proposed extensions or updates associated with existing CVE records.

Its purpose is to provide an additional, machine-readable GCVE channel for proposed corrections, enrichment, CPE information, or other updates when the original CVE record cannot be changed promptly or through the original publisher. Records published through this GNA do **not** overwrite or modify the upstream CVE record.

The related **[BCP-11 proposal](https://discourse.ossbase.org/t/gcve-bcp-11-community-proposed-updates-to-existing-cve-records/1110)** is being developed through the public GCVE discussion process. Until it is formally listed in the BCP index, its status should be considered a public proposal under development.

## Community, data, and reuse

### Q27: How can I contribute to a GCVE BCP or propose a new one?

GCVE uses a transparent and traceable [BCP development process](/process/).

Each BCP or exploratory topic has a dedicated public discussion thread on the GCVE Discourse forum. The discussion captures the problem statement, alternatives, technical trade-offs, feedback, objections, revisions, and eventual consensus.

Contributions are also welcome through open-source implementations, schemas, test data, operational feedback, and participation in the [GCVE community](/who/).

### Q28: Where can I obtain GCVE open data?

The [Open Data page](/opendata/) lists public and machine-readable resources, including:

- Vulnerability-Lookup source dumps;
- GNA-specific dumps;
- GCVE enriched records;
- comments, sightings, bundles, and KEV assertion data;
- data for research, mirroring, correlation, and automation.

Consumers should preserve source attribution, verify directory signatures, treat automated or AI-assisted enrichment as complementary information, and validate operational decisions against the appropriate vendor or authoritative source.

### Q29: How should I cite GCVE or contact the project?

Use the recommended academic and technical reference on the [Citation page](/citation/).

For GNA requests, email `gna@gcve.eu`. For general questions, community channels, and other contact details, see the [Contact page](/contact/).
