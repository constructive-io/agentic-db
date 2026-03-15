-- Revert: schemas/agent-os-1773546821914-39f1cb9b-user-identifiers-public/tables/phone_numbers/columns/is_verified/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-user-identifiers-public".phone_numbers 
  DROP COLUMN is_verified RESTRICT;


