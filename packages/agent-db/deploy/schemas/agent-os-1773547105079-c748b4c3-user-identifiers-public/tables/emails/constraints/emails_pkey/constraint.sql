-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/constraints/emails_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ADD CONSTRAINT emails_pkey PRIMARY KEY (id);

