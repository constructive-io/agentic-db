-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/updated_at/alterations/alt0000003932


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN updated_at DROP DEFAULT;


