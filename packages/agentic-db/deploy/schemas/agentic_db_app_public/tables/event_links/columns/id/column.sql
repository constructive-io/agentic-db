-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/embedding/column


ALTER TABLE "agentic_db_app_public".event_links 
  ADD COLUMN id uuid;

