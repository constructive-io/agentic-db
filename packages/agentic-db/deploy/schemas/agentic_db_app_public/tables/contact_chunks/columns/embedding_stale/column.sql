-- Deploy: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.contact_chunks 
  ADD COLUMN embedding_stale boolean;

