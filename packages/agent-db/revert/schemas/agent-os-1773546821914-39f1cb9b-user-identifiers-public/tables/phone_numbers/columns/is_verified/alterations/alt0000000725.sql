-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/columns/is_verified/alterations/alt0000000725


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers 
  ALTER COLUMN is_verified DROP NOT NULL;


