-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/is_verified/alterations/alt0000002268


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ALTER COLUMN is_verified DROP NOT NULL;


