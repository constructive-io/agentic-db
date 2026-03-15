-- Revert: schemas/agent_db_app_public/tables/company_events/columns/id/alterations/alt0000004196


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN id DROP NOT NULL;


