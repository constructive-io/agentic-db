-- Deploy: schemas/agentic_db_app_public/tables/company_events/columns/id/alterations/alt0000001194
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_events/table
-- requires: schemas/agentic_db_app_public/tables/company_events/columns/id/column


ALTER TABLE "agentic_db_app_public".company_events 
  ALTER COLUMN id SET NOT NULL;

