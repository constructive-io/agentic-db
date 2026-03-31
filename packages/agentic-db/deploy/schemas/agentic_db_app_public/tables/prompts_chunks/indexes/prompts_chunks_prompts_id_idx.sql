-- Deploy: schemas/agentic_db_app_public/tables/prompts_chunks/indexes/prompts_chunks_prompts_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts_chunks/columns/prompts_id/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE INDEX prompts_chunks_prompts_id_idx ON "agentic_db_app_public".prompts_chunks USING BTREE ( prompts_id );

