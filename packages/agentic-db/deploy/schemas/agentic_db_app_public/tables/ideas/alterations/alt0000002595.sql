-- Deploy: schemas/agentic_db_app_public/tables/ideas/alterations/alt0000002595
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/documents/triggers/documents_search_tsv_tsv_update_tg


ALTER TABLE "agentic_db_app_public".ideas 
  DISABLE ROW LEVEL SECURITY;

