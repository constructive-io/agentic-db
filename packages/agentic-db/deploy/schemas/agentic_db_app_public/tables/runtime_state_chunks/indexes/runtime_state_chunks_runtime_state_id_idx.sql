-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/indexes/runtime_state_chunks_runtime_state_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/runtime_state_id/column


CREATE INDEX runtime_state_chunks_runtime_state_id_idx ON "agentic_db_app_public".runtime_state_chunks USING BTREE ( runtime_state_id );

