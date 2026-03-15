-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/constraints/phone_numbers_owner_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
  DROP CONSTRAINT phone_numbers_owner_id_fkey;


