-- Deploy: schemas/agentic_db_app_public/tables/session_chunks/indexes/session_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/session_chunks/columns/entity_id/column


CREATE INDEX session_chunks_entity_id_idx ON agentic_db_app_public.session_chunks USING BTREE ( entity_id );

