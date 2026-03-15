-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-user-identifiers-public/tables/phone_numbers/columns/is_verified/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-user-identifiers-public".phone_numbers 
  DROP COLUMN is_verified RESTRICT;


