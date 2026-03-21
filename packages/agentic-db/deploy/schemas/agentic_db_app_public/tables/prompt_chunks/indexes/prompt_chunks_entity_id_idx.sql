-- Deploy: schemas/agentic_db_app_public/tables/prompt_chunks/indexes/prompt_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/prompt_chunks/columns/entity_id/column


CREATE INDEX prompt_chunks_entity_id_idx ON agentic_db_app_public.prompt_chunks USING BTREE ( entity_id );

