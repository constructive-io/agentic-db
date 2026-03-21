-- Deploy: schemas/agentic_db_app_public/tables/chunks/alterations/alt0000004406
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chunks/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/hash/column


ALTER TABLE agentic_db_app_public.chunks 
  DISABLE ROW LEVEL SECURITY;

