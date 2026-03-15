-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/updated_at/alterations/alt0000002293


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers 
  ALTER COLUMN updated_at DROP DEFAULT;


