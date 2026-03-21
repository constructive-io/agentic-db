-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/event_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/indexes/company_links_company_id_idx


ALTER TABLE "agentic_db_app_public".event_links 
  ADD COLUMN event_id uuid;

