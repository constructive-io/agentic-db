-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/created_at/alterations/alt0000001565


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN created_at DROP DEFAULT;


