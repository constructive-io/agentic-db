-- Revert: schemas/agentic_db_app_public/tables/emails/columns/body_text/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN body_text RESTRICT;


