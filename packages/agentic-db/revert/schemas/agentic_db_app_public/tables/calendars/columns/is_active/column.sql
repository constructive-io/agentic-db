-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/is_active/column


ALTER TABLE "agentic_db_app_public".calendars 
  DROP COLUMN is_active RESTRICT;


