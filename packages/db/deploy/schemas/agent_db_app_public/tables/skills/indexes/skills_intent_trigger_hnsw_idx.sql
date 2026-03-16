-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_intent_trigger_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/intent_trigger/column
-- requires: schemas/agent_db_app_public/tables/rules/indexes/rules_trigger_concept_hnsw_idx


CREATE INDEX skills_intent_trigger_hnsw_idx ON "agent_db_app_public".skills USING hnsw ( intent_trigger vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

