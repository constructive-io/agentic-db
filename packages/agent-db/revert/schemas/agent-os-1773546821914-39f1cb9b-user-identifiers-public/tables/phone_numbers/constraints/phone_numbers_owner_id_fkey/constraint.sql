-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/constraints/phone_numbers_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers 
  DROP CONSTRAINT phone_numbers_owner_id_fkey;


