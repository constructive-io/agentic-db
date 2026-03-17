-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".reminders 
  DROP COLUMN entity_id RESTRICT;


