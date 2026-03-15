-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/updated_at/alterations/alt0000002341


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
  ALTER COLUMN updated_at DROP DEFAULT;


