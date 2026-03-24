-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/id/column


ALTER TABLE "agentic_db_app_public".calendars 
  DROP COLUMN id RESTRICT;


