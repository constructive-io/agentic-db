-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/alterations/alt0000001548
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".agent_chunks 
  DISABLE ROW LEVEL SECURITY;

