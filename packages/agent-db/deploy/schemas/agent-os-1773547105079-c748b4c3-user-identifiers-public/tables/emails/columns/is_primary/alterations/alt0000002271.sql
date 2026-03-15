-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/is_primary/alterations/alt0000002271
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/is_primary/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ALTER COLUMN is_primary SET NOT NULL;

