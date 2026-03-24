-- Revert: schemas/agentic_db_app_public/tables/emails/columns/is_read/column


ALTER TABLE "agentic_db_app_public".emails 
  DROP COLUMN is_read RESTRICT;


