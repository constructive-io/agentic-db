-- Revert: schemas/agentic_db_app_public/tables/reminders/columns/entity_id/alterations/alt0000001452


ALTER TABLE "agentic_db_app_public".reminders 
  ALTER COLUMN entity_id DROP NOT NULL;


