-- Revert: schemas/agentic_db_app_public/tables/company_events/constraints/company_events_pkey/constraint


ALTER TABLE "agentic_db_app_public".company_events 
  DROP CONSTRAINT company_events_pkey;


