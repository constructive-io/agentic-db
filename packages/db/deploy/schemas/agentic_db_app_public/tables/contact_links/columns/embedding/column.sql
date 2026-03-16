-- Deploy: schemas/agentic_db_app_public/tables/contact_links/columns/embedding/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/url/alterations/alt0000000946


ALTER TABLE "agentic_db_app_public".contact_links 
  ADD COLUMN embedding vector(768);

