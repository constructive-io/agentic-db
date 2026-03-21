-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/updated_at/alterations/alt0000002602


ALTER TABLE "agentic_db_app_public".ideas 
  ADD COLUMN content text;

