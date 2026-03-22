-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/constraints/agent_chunks_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_intent_trigger_embedding_hnsw_idx


ALTER TABLE "agentic_db_app_public".agent_chunks 
  ADD CONSTRAINT agent_chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

