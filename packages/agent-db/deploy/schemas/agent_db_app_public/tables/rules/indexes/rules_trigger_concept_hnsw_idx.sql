-- Deploy: schemas/agent_db_app_public/tables/rules/indexes/rules_trigger_concept_hnsw_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/trigger_concept/column
-- requires: schemas/agent_db_app_public/tables/session_archives/indexes/session_archives_embedding_hnsw_idx


CREATE INDEX rules_trigger_concept_hnsw_idx ON agent_db_app_public.rules USING hnsw ( trigger_concept vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

