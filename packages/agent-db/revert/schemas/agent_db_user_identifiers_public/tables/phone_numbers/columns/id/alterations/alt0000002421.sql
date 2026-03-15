-- Revert: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/id/alterations/alt0000002421


ALTER TABLE "agent_db_user_identifiers_public".phone_numbers 
  ALTER COLUMN id DROP NOT NULL;


