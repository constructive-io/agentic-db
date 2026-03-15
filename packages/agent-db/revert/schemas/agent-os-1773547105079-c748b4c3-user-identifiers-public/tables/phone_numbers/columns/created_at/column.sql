-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers 
  DROP COLUMN created_at RESTRICT;


