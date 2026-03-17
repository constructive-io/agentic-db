-- Revert: schemas/agentic_db_app_public/tables/contacts/columns/last_name/column


ALTER TABLE "agentic_db_app_public".contacts 
  DROP COLUMN last_name RESTRICT;


