-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/is_primary/column


ALTER TABLE "agent_db_user_identifiers_public".emails 
  DROP COLUMN is_primary RESTRICT;


