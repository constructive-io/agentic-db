-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/id/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  DROP COLUMN id RESTRICT;


