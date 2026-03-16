-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/updated_at/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  DROP COLUMN updated_at RESTRICT;


