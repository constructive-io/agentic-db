-- Revert: schemas/agent_db_app_public/tables/company_events/columns/entity_id/alterations/alt0000002696


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN entity_id DROP NOT NULL;


