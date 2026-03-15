-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/created_at/alterations/alt0000002274
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ALTER COLUMN created_at SET DEFAULT now();

