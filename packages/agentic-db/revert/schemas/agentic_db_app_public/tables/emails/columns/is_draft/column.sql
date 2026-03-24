-- Revert: schemas/agentic_db_app_public/tables/emails/columns/is_draft/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN is_draft RESTRICT;


