-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/created_at/column


ALTER TABLE "agentic_db_app_public".calendars 
  DROP COLUMN created_at RESTRICT;


