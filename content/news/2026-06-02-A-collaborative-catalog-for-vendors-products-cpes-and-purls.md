---
title: "Introducing CPE.GCVE.EU: A collaborative catalog for vendors, products, CPEs and PURLs"
date: 2026-06-02
tags:
- GCVE
- CPE
- PURL
- vulnerability-management
- open-source
summary: "CPE.GCVE.EU provides a browsable, searchable and collaborative catalog of vendors, products, CPEs and their relationships with GCVE and PURL data."
---

# Introducing CPE.GCVE.EU

We are happy to announce the availability of **[CPE.GCVE.EU](https://cpe.gcve.eu/)**, a new service in the GCVE ecosystem dedicated to browsing, searching and improving vendor, product and CPE information.

CPE information is a key element in vulnerability management. It allows users, tools and security teams to connect vulnerability information with affected vendors and products. However, maintaining high-quality mappings between vendors, products and identifiers is difficult. Names change, products are renamed, vendors merge, aliases exist, and different ecosystems often use different identifiers for the same software.

**CPE.GCVE.EU** aims to make this information easier to explore, easier to improve and easier to reuse.

Like the rest of the GCVE initiative, the backend is also open source. The implementation is available in the **[gcve-eu/cpe-editor](https://github.com/gcve-eu/cpe-editor/)** repository. The data format used by CPE.GCVE.EU is defined in **[GCVE-BCP-10: Improved Common Platform Enumeration for GCVE](https://gcve.eu/bcp/gcve-bcp-10/)**, which describes the registry model for vendors, products, CPE entries, metadata, relationships and proposals.

## What can you do with CPE.GCVE.EU?

### Browse vendors and products

CPE.GCVE.EU provides a simple interface to browse existing vendors and their associated products.

This makes it easier to explore the current state of the catalog, identify existing entries and understand how vendors and products are represented.

Typical use cases include:

* Finding whether a vendor already exists.
* Listing the products associated with a vendor.
* Checking how a product is currently named.
* Reviewing related CPE entries.

### Pivot from vendors and products to DB.GCVE.EU

Vendor and product pages can be used as pivot points into **[DB.GCVE.EU](https://db.gcve.eu/)**.

This allows users to move from a vendor or product view to related vulnerability information in the GCVE database. For vulnerability analysts, CSIRTs, vendors and tooling developers, this provides a practical way to connect product naming information with vulnerability records.

For example, a user can:

1. Search for a vendor or product in CPE.GCVE.EU.
2. Review the associated CPE information.
3. Pivot to DB.GCVE.EU to explore related vulnerabilities.

### Propose new vendors and products

CPE.GCVE.EU is also designed as a collaborative platform.

Users can propose new vendors and products when they are missing from the catalog. This is especially useful for newly created projects, open-source software, renamed products, or products that are not yet represented in existing CPE datasets.

The goal is to make the catalog easier to improve over time, while keeping the process transparent and reusable.

### Propose relationships between vendors and products

Real-world vendor and product naming is not always straightforward.

A product may be renamed. A vendor may use multiple names. A project may have synonyms or historical names. Different sources may describe the same software differently.

CPE.GCVE.EU supports the proposal of relationships between vendors and products, including:

* Renaming relationships.
* Synonyms.
* Alternative names.
* Vendor/product relationships.
* Improvements to existing mappings.

This helps create a richer and more accurate representation of the software ecosystem.

### Deterministic UUIDv5 identifiers

CPE.GCVE.EU now uses fixed **UUIDv5** identifiers.

These identifiers are deterministic and easy to calculate. This makes them suitable for reuse in external tools, scripts, datasets and APIs.

Using UUIDv5 helps ensure that the same logical object can be referenced consistently across systems without relying on randomly generated identifiers.

This is particularly useful for:

* Reproducible datasets.
* Synchronisation between tools.
* External references.
* API clients.
* Long-term stable identifiers.

The UUIDv5 approach and the related registry exchange format are documented in **[GCVE-BCP-10](https://gcve.eu/bcp/gcve-bcp-10/)**.

### Extensive API support

CPE.GCVE.EU provides an extensive API for querying and integrating the data.

The API can be used to search and retrieve information about:

* Vendors.
* Products.
* CPE entries.
* Proposals.
* Relationships.
* Related metadata.

This allows developers and security teams to integrate CPE.GCVE.EU into their own workflows, including vulnerability enrichment, asset inventory, exposure management, and vulnerability intelligence platforms.

### Statistics and visibility

CPE.GCVE.EU also includes extensive statistics.

These statistics help users understand the current state of the catalog, including the number of vendors, products, CPE entries and proposals.

The statistics are useful for tracking growth, identifying areas where data quality can be improved, and measuring the evolution of the catalog over time.

### PURL and CPE relationships

When a **PURL** package reference exists, CPE.GCVE.EU also shows the relationship between **PURL** and **CPE** information.

This is important because modern software identification often involves several ecosystems and naming schemes. CPE is widely used in vulnerability management, while PURL is commonly used to identify software packages across package managers and software supply chain tools.

By showing these relationships, CPE.GCVE.EU helps bridge vulnerability management and software supply chain use cases.

This can support workflows such as:

* Mapping package URLs to CPE entries.
* Enriching software bill of materials data.
* Linking package ecosystems with vulnerability data.
* Improving vulnerability matching for open-source components.

## Open source and documented format

[CPE.GCVE.EU](https://cpe.gcve.eu/) is not only a public service. It is also reusable infrastructure.

The backend is open source and published as **[gcve-eu/cpe-editor](https://github.com/gcve-eu/cpe-editor/)**. This allows users, researchers, vendors, CSIRTs and tool developers to inspect the implementation, run their own instance, contribute improvements, or reuse parts of the system in their own workflows.

The format used by the backend is defined in **[GCVE-BCP-10](https://gcve.eu/bcp/gcve-bcp-10/)**. BCP-10 defines the improved Common Platform Enumeration model for GCVE, including deterministic UUIDv5 identifiers, vendor and product records, CPE entries, metadata, relationships and optional proposals.

This means that CPE.GCVE.EU is built on a documented and reusable format rather than on an opaque internal data model.

## Why this matters

Accurate vendor, product, CPE and PURL information is essential for reliable vulnerability management.

Poor mappings can lead to missed vulnerabilities, false positives, duplicate work and confusion between different tools. By providing a browsable catalog, deterministic identifiers, proposal mechanisms, relationship tracking, API access and statistics, CPE.GCVE.EU contributes to a more open and collaborative vulnerability information ecosystem.

CPE.GCVE.EU is part of the broader GCVE.eu effort to provide open, distributed and reusable infrastructure for vulnerability coordination and vulnerability data publication. Its open-source backend and documented BCP-10 format make it easier for other communities and tools to adopt, verify and extend the approach.

## Try it

You can start exploring the service here:

* [**CPE.GCVE.EU**](https://cpe.gcve.eu/)
* [**DB.GCVE.EU**](https://db.gcve.eu/)
* [**CPE Editor source code**](https://github.com/gcve-eu/cpe-editor/)
* [**GCVE-BCP-10**](https://gcve.eu/bcp/gcve-bcp-10/)

Feedback, proposals and contributions are welcome.

