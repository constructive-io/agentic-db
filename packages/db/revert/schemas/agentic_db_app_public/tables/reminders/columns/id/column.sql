-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/id/column


ALTER TABLE "agentic_db_app_public".reminders 
  DROP COLUMN id RESTRICT;


