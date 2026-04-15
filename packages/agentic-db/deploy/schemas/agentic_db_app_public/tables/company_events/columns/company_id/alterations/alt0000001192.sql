-- Deploy: schemas/agentic_db_app_public/tables/company_events/columns/company_id/alterations/alt0000001192
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/tables/company_events/columns/company_id/column


ALTER TABLE "agentic_db_app_public".company_events 
  ALTER COLUMN company_id SET NOT NULL;

