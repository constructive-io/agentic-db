-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_trigger_concept_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept/column
-- requires: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_embedding_text_bm25_idx


CREATE INDEX rules_trigger_concept_hnsw_idx ON agentic_db_app_public.rules USING hnsw ( trigger_concept vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

