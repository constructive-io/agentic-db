-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/created_at/alterations/alt0000002340


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
  ALTER COLUMN created_at DROP DEFAULT;


