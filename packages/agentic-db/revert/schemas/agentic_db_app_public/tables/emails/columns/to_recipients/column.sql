-- Revert: schemas/agentic_db_app_public/tables/emails/columns/to_recipients/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN to_recipients RESTRICT;


