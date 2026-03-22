-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_intent_trigger_embedding_hnsw_idx


GRANT UPDATE ON "agentic_db_app_public".agent_chunks TO authenticated;

