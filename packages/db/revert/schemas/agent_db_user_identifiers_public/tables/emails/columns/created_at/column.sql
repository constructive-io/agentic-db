-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/created_at/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  DROP COLUMN created_at RESTRICT;


