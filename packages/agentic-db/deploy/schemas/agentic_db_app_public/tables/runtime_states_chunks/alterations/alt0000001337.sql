-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/alterations/alt0000001337
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  DISABLE ROW LEVEL SECURITY;

