-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_prompt_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/prompt_id/column
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/indexes/goal_chunks_goal_id_idx


CREATE INDEX prompt_chunks_prompt_id_idx ON "agentic_db_app_public".prompt_chunks USING BTREE ( prompt_id );

