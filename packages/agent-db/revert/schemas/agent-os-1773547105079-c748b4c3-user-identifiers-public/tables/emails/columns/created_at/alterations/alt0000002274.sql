-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/created_at/alterations/alt0000002274


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ALTER COLUMN created_at DROP DEFAULT;


