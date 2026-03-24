-- Deploy: schemas/agentic_db_app_public/tables/skills/indexes/skills_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/embedding_text/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX skills_embedding_text_bm25_idx ON "agentic_db_app_public".skills USING bm25 ( embedding_text ) WITH ( text_config = english );

