-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.reminder_chunks 
  DROP COLUMN entity_id RESTRICT;


