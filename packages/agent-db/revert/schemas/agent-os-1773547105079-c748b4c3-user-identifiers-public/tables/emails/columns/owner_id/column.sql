-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/emails/columns/owner_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".emails 
  DROP COLUMN owner_id RESTRICT;


