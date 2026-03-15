-- Revert: schemas/agent-os-1773551593867-bac64076-user-identifiers-public/tables/phone_numbers/columns/is_verified/alterations/alt0000002334


ALTER TABLE "agent-os-1773551593867-bac64076-user-identifiers-public".phone_numbers 
  ALTER COLUMN is_verified DROP NOT NULL;


