-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/name/column


ALTER TABLE "agentic_db_app_public".calendars 
  DROP COLUMN name RESTRICT;


