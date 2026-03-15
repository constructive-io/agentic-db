-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/columns/created_at/alterations/alt0000000731


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers 
  ALTER COLUMN created_at DROP DEFAULT;


