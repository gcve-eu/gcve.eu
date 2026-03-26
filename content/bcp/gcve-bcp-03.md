---
title: GCVE-BCP-03 - Decentralized Publication Standard
---

# Decentralized Publication Standard

![](https://gcve.eu/logos/gcve.png)

- **Version**: 1.5
- **Status**: Published (for public review)
- **Date**: 2026-03-10
- **Authors**: GCVE Working Group
- **BCP ID**: BCP-03

This guide is distributed under [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/legalcode).

Copyright (C) 2025-2026 GCVE Initiative.

## Introduction

This document describes the decentralized publication model that allows GNAs to publish their vulnerability information directly, without relying on a centralized system.

It also outlines the access methods GNAs use to distribute published vulnerabilities through various mechanisms.

Clients can rely on this BCP document to obtain vulnerabilities published by a GNA.

## Mechanism

The decentralized model is based on the principle that each GNA has full control over its own publication process. The GCVE directory then provides a way to discover the entry points used to collect vulnerability information from a trusted set of GNAs, allowing users to decide whom to trust and from whom to pull vulnerability information.

## Reference Implementation

A [reference implementation is available](https://www.vulnerability-lookup.org/2025/06/13/vulnerability-lookup-2-11-0/) in the open-source project [Vulnerability-Lookup](https://www.vulnerability-lookup.org/), which supports this BCP. It can be used both for decentralized publication and for collecting vulnerability information from all GNAs listed in the GCVE directory.

![An overview of the GCVE decentralized publication model](https://gcve.eu/images/gcve-eu-network.png)

## Transport

The transport mechanism used to gather vulnerability information relies on HTTP, with two access modes exposed through a single URL. One mode is a simple REST API that allows retrieval of the latest published vulnerabilities, either starting from a specific date or by paginating through the entire dataset. The other mode is a static endpoint that serves a vulnerability file. A GNA can use one or both transport methods.

The URL is referenced in the GCVE directory under the `gcve_pull_api` field.

### HTTP REST API

The API base URL is defined in the `gcve_pull_api` field and must support at least the following endpoint:

- `/api/gcve/publication` — Retrieves published vulnerabilities for the local GNA.

The full URL is constructed from the value of the `gcve_pull_api` field in the GCVE directory.

By default, the endpoint **MUST** return only the local GNA's vulnerabilities in the GCVE-BCP-05 format. In addition, a set of optional filters **MUST** be available to allow clients to refine the data returned by the local GNA.

#### Retrieve vulnerabilities with optional filtering and pagination

This endpoint retrieves vulnerabilities with optional filtering and pagination.

##### Behavior

- Returns **full vulnerability details** by default.

##### Query Parameters

###### `source` : `str`

Optional source used to filter vulnerabilities (for example: `CVE`, `GHSA`, `PySec`).

###### `per_page` : `int`, default=`30`

Maximum number of results, capped at `100`.

###### `date_sort` : `str`

Field used for sorting.

Supported values:
- `''`
- `published`
- `updated`
- `reserved`

###### `sort_order` : `str`

Sort order.

Supported values:
- `asc`
- `desc`

###### `since` : `str`

Retrieves vulnerabilities published or updated after the specified date.

###### `page` : `int`

Pagination page number.

###### `cwe` : `str`

Filters vulnerabilities by a specific CWE ID.

###### `product` : `str`

Optional product name used to filter vulnerabilities (case-insensitive).

If set, the endpoint returns vulnerabilities related to this product across all vendors. Use it with `assigner` to narrow the results further.

###### `assigner` : `str`

Optional assigner short name used to filter results (case-insensitive).

This filter is effective only when used with `product` or `vendor`.

##### Returns

`list[dict[str, Any]] | list[tuple[str, str | None]]`

Returns either:
- full vulnerability details, or
- minimal tuples if light mode is enabled.

### Static File

The full URL of the static endpoint is constructed from the value of the `gcve_pull_api` field in the GCVE directory.

- `/dumps/gna-{GCVE-ID}.ndjson` — A static dump of the vulnerabilities published by the GNA.

A `security.txt` file can be used to declare a GCVE publication endpoint using the `GCVE` field.

## Format

The format must adhere to the CVE Record Format as described in the [CVE Record Format schema](https://github.com/CVEProject/cve-schema/blob/main/schema/CVE_Record_Format.json).

The detailed format is specified in **[GCVE-BCP-05](https://gcve.eu/bcp/gcve-bcp-05/)**, particularly to ensure compatibility with the CVE Record Format while also supporting the potential extended fields required by GCVE.

## Example Service

`GNA-1` provides a reference service that can be used to query and test a client.

- The API endpoint is available at: [https://vulnerability.circl.lu/api/](https://vulnerability.circl.lu/api/)
- The static file is available at: [https://vulnerability.circl.lu/dumps/gna-1.ndjson](https://vulnerability.circl.lu/dumps/gna-1.ndjson)
