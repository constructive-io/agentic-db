-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_intent_trigger_embedding_hnsw_idx


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ENABLE ROW LEVEL SECURITY;

