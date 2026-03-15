-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/number/alterations/alt0000003941


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN number DROP NOT NULL;


