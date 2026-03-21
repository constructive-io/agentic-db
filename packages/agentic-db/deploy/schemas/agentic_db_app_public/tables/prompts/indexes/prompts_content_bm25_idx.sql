-- Deploy: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_content_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_intent_trigger_hnsw_idx


CREATE INDEX prompts_content_bm25_idx ON "agentic_db_app_public".prompts USING bm25 ( content ) WITH ( text_config = english );

