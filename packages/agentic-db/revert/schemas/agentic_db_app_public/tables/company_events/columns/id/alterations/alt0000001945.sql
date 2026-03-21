-- Revert: schemas/agentic_db_app_public/tables/company_events/columns/id/alterations/alt0000001945


ALTER TABLE "agentic_db_app_public".company_events 
  ALTER COLUMN id DROP NOT NULL;


