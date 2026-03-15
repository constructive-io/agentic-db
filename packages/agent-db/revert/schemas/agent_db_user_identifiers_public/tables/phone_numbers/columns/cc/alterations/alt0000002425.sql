-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/cc/alterations/alt0000002425


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN cc DROP NOT NULL;


