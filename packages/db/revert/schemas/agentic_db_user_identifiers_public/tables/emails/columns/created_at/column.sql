-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/created_at/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  DROP COLUMN created_at RESTRICT;


