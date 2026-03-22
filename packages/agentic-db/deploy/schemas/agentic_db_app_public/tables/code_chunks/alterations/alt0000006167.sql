-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/alterations/alt0000006167
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebases/triggers/codebases_enqueue_embedding_update_tg


ALTER TABLE agentic_db_app_public.code_chunks 
  DISABLE ROW LEVEL SECURITY;

