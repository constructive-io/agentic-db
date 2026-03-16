-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/owner_id/alterations/alt0000001555


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN owner_id DROP NOT NULL;


