-- Revert: schemas/agent_db_app_public/tables/company_events/columns/event_id/alterations/alt0000004243


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN event_id DROP NOT NULL;


