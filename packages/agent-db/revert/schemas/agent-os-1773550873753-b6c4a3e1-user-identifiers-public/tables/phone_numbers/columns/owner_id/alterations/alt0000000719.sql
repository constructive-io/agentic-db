-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/columns/owner_id/alterations/alt0000000719


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers 
  ALTER COLUMN owner_id DROP NOT NULL;


