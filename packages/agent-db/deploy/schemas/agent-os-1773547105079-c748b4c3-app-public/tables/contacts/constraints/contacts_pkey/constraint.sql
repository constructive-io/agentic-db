-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/constraints/contacts_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);

