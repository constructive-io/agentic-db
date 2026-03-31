-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_embedding_text_bm25_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_text/column


CREATE INDEX tool_definitions_embedding_text_bm25_idx ON "agentic_db_app_public".tool_definitions USING bm25 ( embedding_text ) WITH ( text_config = english );

