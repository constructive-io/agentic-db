-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/event_id/alterations/alt0000001000
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/event_id/column
-- requires: schemas/agentic_db_app_public/tables/company_links/constraints/company_links_company_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".event_links 
  ALTER COLUMN event_id SET NOT NULL;

