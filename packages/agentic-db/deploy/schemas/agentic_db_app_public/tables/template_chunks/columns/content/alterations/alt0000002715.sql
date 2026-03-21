-- Deploy: schemas/agentic_db_app_public/tables/template_chunks/columns/content/alterations/alt0000002715
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/template_chunks/table
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/template_chunks/columns/chunk_index/alterations/alt0000002714


ALTER TABLE "agentic_db_app_public".template_chunks 
  ALTER COLUMN content SET NOT NULL;

