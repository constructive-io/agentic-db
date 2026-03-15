-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/is_verified/alterations/alt0000002429


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN is_verified DROP NOT NULL;


