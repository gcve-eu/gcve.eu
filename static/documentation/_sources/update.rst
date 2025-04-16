Updating the application
========================

All you have to do is:

.. code-block:: bash

    $ cd vulnerability-lookup/
    $ poetry run update


Updating the CVE Record editor
------------------------------

.. note::

    You do not need to do this to update the tool.


We are using the `Vulnogram editor <https://github.com/Vulnogram/Vulnogram>`_.
The frontend is directly bundled in a HTML template of Vulnerability Lookup.

If you want to update the bundle you must first generate only the frontend of Vulnogram.
Follow the instructions
`here <https://github.com/Vulnogram/Vulnogram?tab=readme-ov-file#browser-mode-deployment>`_.

Then from the generated index.html file extract the part ... and copy it
in website/web/templates/vulnogram/index.html in the Jinja block ``vulnogram``.
Screenshot:

.. figure:: /_static/img/vulnogram-code.png
   :alt: Vulnogram code.
   :target: /_static/img/vulnogram-code.png

   Vulnogram code.

The headers (CSS inclusion, etc.), definition of the JSON schema, are already available in the file
``bundle.html``.


The JSON schema defined in the file ``bundle.html`` is a based on the one provided in ``vulnogram``
with few minor changes:

- the format of the identifier, ``vulnId``, is by default: ``^CIRCL-SA-[0-9]{4}-[0-9]{4,19}$``. This is
  configurable in the ``generic.json`` configuration file.
- ``cveId`` is optional.
- ``vulnId`` is mandatory.
- ``additionalProperties`` is set to ``true`` for the ``cveMetadataPublished`` field. This allows us to
  store the dates of the editions of the vulnerability advisories in ``vulnerabilitylookup_history``.


.. code-block:: json

    "cveMetadataPublished": {
        "description":"This is meta data about the CVE ID such as the CVE ID, who requested it, who assigned it, when it was requested, the current state (PUBLISHED, REJECTED, etc.) and so on.  These fields are controlled by the CVE Services.",
        "title":" ",
        "id":"pubmd",
        "type":"object",
        "format":"grid",
        "options":{},
        "required":["vulnId","assignerOrgId","state"],
        "properties":{
            "cveId":{"description":"The CVE identifier that this record pertains to.","$ref":"#\u002Fdefinitions\u002FcveId","options":{"grid_columns":3},"links":[{"class":"lbl vgi-ext","href":"'https:\u002F\u002Fwww.cve.org\u002FCVERecord?id=' + context.self","title":"'CVE.org Entry","rel":"'cve.org'"}]},
            "vulnId":{"description":"The vulnerability identifier that this record pertains to.","$ref":"#\u002Fdefinitions\u002FvulnId","options":{"grid_columns":3}},
            "assignerOrgId":{"$ref":"#\u002Fdefinitions\u002ForgId","description":"The UUID for the organization to which the CVE ID was originally assigned. This UUID can be used to lookup the organization record in the user registry service.","options":{"hidden":true}},"assignerShortName":{"title":"Assigner","$ref":"#\u002Fdefinitions\u002FshortName","description":"The short name for the organization to which the CVE ID was originally assigned."},
            "requesterUserId":{"$ref":"#\u002Fdefinitions\u002FuserId","description":"The user that requested the CVE identifier.","options":{"hidden":true},"default":""},
            "dateUpdated":{"description":"The date\u002Ftime the record was last updated.","$ref":"#\u002Fdefinitions\u002Ftimestamp","options":{"hidden":true}},
            "serial":{"type":"integer","minimum":1,"default":1,"description":"The system of record causes this to start at 1, and increment by 1 each time a submission from a data provider changes this CVE Record. The incremented value moves to the Rejected schema upon a PUBLISHED-\u003EREJECTED transition, and moves to the Published schema upon a REJECTED-\u003EPUBLISHED transition.","options":{"hidden":true}},
            "dateReserved":{"$ref":"#\u002Fdefinitions\u002Ftimestamp","description":"The date\u002Ftime this CVE ID was reserved in the CVE automation workgroup services system. Disclaimer: This date reflects when the CVE ID was reserved, and does not necessarily indicate when this vulnerability was discovered, shared with the affected vendor, publicly disclosed, or updated in CVE.","options":{"hidden":true}},
            "datePublished":{"$ref":"#\u002Fdefinitions\u002Ftimestamp","description":"The date\u002Ftime the CVE Record was first published in the CVE List.","options":{"hidden":true}},
            "state":{"description":"State of CVE - PUBLISHED, REJECTED.","type":"string","pattern":"^PUBLISHED$","enum":["PUBLISHED"],"options":{"hidden":true}},
            "vulnerabilitylookup_history":{"options":{"hidden":true}}
        },
        "additionalProperties":true
    }

``vulnerabilitylookup_history`` is set to hidden.
