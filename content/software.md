---
title: GCVE - Software
toc: false
---

<section class="gcve-hero gcve-software-hero">
  <div class="gcve-hero-grid">
    <div>
      <p class="gcve-eyebrow">Open-source GCVE ecosystem</p>
      <h1>Software for <span class="gcve-gradient-text">GCVE</span></h1>
      <p class="gcve-hero-lede">Tools, libraries, validators, and integrations that implement GCVE Best Current Practices and help teams publish, curate, enrich, and consume vulnerability information.</p>
      <div class="gcve-hero-actions">
        <a class="gcve-button gcve-button-primary" href="#reference-implementation">Reference implementation</a>
        <a class="gcve-button gcve-button-secondary" href="#supporting-tools">Supporting tools</a>
      </div>
    </div>
    <div class="gcve-hero-panel gcve-software-panel" aria-label="Software focus areas">
      <div class="gcve-software-panel-header">
        <img src="/logos/gcve.png" alt="GCVE logo" />
        <p>BCP-aligned building blocks for distributed vulnerability publication.</p>
      </div>
      <div class="gcve-stat-grid">
        <div class="gcve-stat"><strong>GNA</strong><span>Operate numbering workflows</span></div>
        <div class="gcve-stat"><strong>CPE</strong><span>Curate product metadata</span></div>
        <div class="gcve-stat"><strong>KEV</strong><span>Publish exploitation assertions</span></div>
        <div class="gcve-stat"><strong>AI</strong><span>Annotate assisted enrichment</span></div>
      </div>
    </div>
  </div>
</section>

[GCVE BCP](/bcp) defines standards implemented in open-source software to support GCVE publication processes and operations. The projects below are organized around the same polished, card-based style as the main page so implementers can quickly find production platforms, curation tools, validators, and integration helpers.

<h2 id="reference-implementation">Reference Software Implementation of the GCVE Standard</h2>

<p class="gcve-section-intro">Start here if you want a complete open-source platform for vulnerability publication and GCVE Numbering Authority operations.</p>

<div class="gcve-software-grid gcve-software-grid-featured">
  <article class="gcve-tool-card gcve-tool-card-featured">
    <div class="gcve-tool-card-media gcve-tool-card-media-wide">
      <img src="https://vulnerability.circl.lu/static/img/VL-hori-coul.png" alt="Vulnerability-Lookup logo" />
    </div>
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">Reference implementation</p>
      <h3>vulnerability-lookup</h3>
      <p>The Vulnerability-Lookup software is a powerful open-source sharing platform that assists security teams, researchers, and system administrators in identifying, tracking, and publishing vulnerabilities. Vulnerability-Lookup implements the required GCVE BCP standards to operate a GNA.</p>
      <ul class="gcve-tool-list">
        <li>GCVE-compatible vulnerability publication workflows.</li>
        <li>Designed for vulnerability intelligence sharing and lookup.</li>
        <li>Suitable as a complete GNA operational platform.</li>
      </ul>
      <div class="gcve-tool-actions">
        <a class="gcve-button gcve-button-primary" href="https://www.vulnerability-lookup.org/">Open project</a>
        <a class="gcve-button gcve-button-secondary" href="https://github.com/vulnerability-lookup/vulnerability-lookup">GitHub repository</a>
      </div>
    </div>
  </article>
</div>

<h2 id="supporting-tools">Software Supporting the GCVE BCP Standards</h2>

<p class="gcve-section-intro">Composable tools for curation, validation, conversion, AI provenance, and client-side integration across GCVE-compatible systems.</p>

<div class="gcve-software-grid">
  <article class="gcve-tool-card">
    <div class="gcve-tool-card-media">
      <img src="/logos/gcve.png" alt="GCVE logo" />
    </div>
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">CPE and product curation</p>
      <h3>cpe-editor</h3>
      <p>A collaborative CPE editor for browsing, curating, and publishing Common Platform Enumeration data with moderation workflows, API access, and portable datasets.</p>
      <ul class="gcve-tool-list">
        <li>Browse vendors, products, CPE records, and relationships.</li>
        <li>Review structured public proposals through moderation workflows.</li>
        <li>Import NVD, PURL-to-CPE, and GCVE enriched CVE data.</li>
      </ul>
      <div class="gcve-tool-actions">
        <a class="gcve-button gcve-button-primary" href="https://cpe.gcve.eu/">Open service</a>
        <a class="gcve-button gcve-button-secondary" href="https://github.com/gcve-eu/cpe-editor">GitHub repository</a>
      </div>
    </div>
  </article>

  <article class="gcve-tool-card">
    <div class="gcve-tool-card-media">
      <img src="/logos/gcve.png" alt="GCVE logo" />
    </div>
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">AI-assisted annotation</p>
      <h3>AI-Assisted Vulnerability Information Annotation</h3>
      <p>A Python utility that fetches vulnerability records from db.gcve.eu, generates analyst-oriented summaries and recommendations with a configurable local Ollama model, and records GCVE AI provenance metadata.</p>
      <ul class="gcve-tool-list">
        <li>Accepts CVE IDs and GCVE IDs from db.gcve.eu.</li>
        <li>Adds local AI enrichment and BCP-05-X-01 provenance annotations.</li>
        <li>Outputs enriched JSON for review and downstream processing.</li>
      </ul>
      <div class="gcve-tool-actions">
        <a class="gcve-button gcve-button-primary" href="https://github.com/gcve-eu/gcve-eu-ai-extension">GitHub repository</a>
      </div>
    </div>
  </article>

  <article class="gcve-tool-card">
    <div class="gcve-tool-card-media">
      <img src="/logos/gcve.png" alt="GCVE logo" />
    </div>
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">BCP-07 KEV assertions</p>
      <h3>gcve-eu-kev</h3>
      <p>Python tooling that downloads Known Exploited Vulnerability feeds and converts entries into GCVE-BCP-07 KEV Assertion JSON objects.</p>
      <ul class="gcve-tool-list">
        <li>Transforms list-based KEV feeds into attributable assertions.</li>
        <li>Supports ingestion into GCVE-compatible systems and pipelines.</li>
        <li>Helps operational teams preserve structured exploitation context.</li>
      </ul>
      <div class="gcve-tool-actions">
        <a class="gcve-button gcve-button-primary" href="https://github.com/gcve-eu/gcve-eu-kev">GitHub repository</a>
      </div>
    </div>
  </article>

  <article class="gcve-tool-card">
    <div class="gcve-tool-card-media">
      <img src="/logos/gcve.png" alt="GCVE logo" />
    </div>
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">Schemas and validation</p>
      <h3>bcp-validator</h3>
      <p>Validators and JSON Schemas for GCVE Best Current Practices, built to help producers, consumers, and integrators validate GCVE-related data structures consistently.</p>
      <ul class="gcve-tool-list">
        <li>Implementation-oriented validation for BCP data structures.</li>
        <li>Reusable JSON Schemas for automated checks.</li>
        <li>Interoperability support for GCVE producers and consumers.</li>
      </ul>
      <div class="gcve-tool-actions">
        <a class="gcve-button gcve-button-primary" href="https://github.com/gcve-eu/bcp-validator">GitHub repository</a>
      </div>
    </div>
  </article>

  <article class="gcve-tool-card">
    <div class="gcve-tool-card-media">
      <img src="/logos/gcve.png" alt="GCVE logo" />
    </div>
    <div class="gcve-tool-card-body">
      <p class="gcve-tool-kicker">Python client</p>
      <h3>gcve</h3>
      <p>A Python client for the Global CVE Allocation System that can be integrated into software such as Vulnerability-Lookup and used from the command line to query the GCVE GNA directory.</p>
      <ul class="gcve-tool-list">
        <li>Provides core GCVE client functionality for applications.</li>
        <li>Follows GCVE Best Current Practices.</li>
        <li>Includes command-line access to the GNA directory.</li>
      </ul>
      <div class="gcve-tool-actions">
        <a class="gcve-button gcve-button-primary" href="https://github.com/gcve-eu/gcve">GitHub repository</a>
      </div>
    </div>
  </article>
</div>
