-- Revert: schemas/agent_db_app_public/tables/company_events/columns/company_id/alterations/alt0000004194


ALTER TABLE "agent_db_app_public".company_events 
  ALTER COLUMN company_id DROP NOT NULL;


