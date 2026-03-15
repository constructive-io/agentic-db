-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/created_at/alterations/alt0000004562


ALTER TABLE "agent_db_app_public".calendar_events 
  ALTER COLUMN created_at DROP NOT NULL;


