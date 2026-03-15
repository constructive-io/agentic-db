-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/updated_at/alterations/alt0000002275


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  ALTER COLUMN updated_at DROP DEFAULT;


