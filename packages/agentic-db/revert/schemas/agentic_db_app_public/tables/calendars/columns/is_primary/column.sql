-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/is_primary/column


ALTER TABLE "agentic_db_app_public".calendars 
  DROP COLUMN is_primary RESTRICT;


