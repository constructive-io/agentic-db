-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/title/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/updated_at/alterations/alt0000001065


ALTER TABLE "agentic_db_app_public".contact_links 
  ADD COLUMN title text;

