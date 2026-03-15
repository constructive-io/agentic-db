-- Deploy: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/cc/alterations/alt0000002282
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/cc/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers 
  ALTER COLUMN cc SET NOT NULL;

