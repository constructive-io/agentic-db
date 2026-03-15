-- Revert: schemas/agent-os-1773547105079-c748b4c3-user-identifiers-public/tables/phone_numbers/columns/number/alterations/alt0000002284


ALTER TABLE "agent-os-1773547105079-c748b4c3-user-identifiers-public".phone_numbers 
  ALTER COLUMN number DROP NOT NULL;


