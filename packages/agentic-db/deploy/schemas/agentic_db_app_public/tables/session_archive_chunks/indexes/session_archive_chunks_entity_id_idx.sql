-- Deploy: schemas/agentic_db_app_public/tables/session_archive_chunks/indexes/session_archive_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/session_archive_chunks/columns/entity_id/column


CREATE INDEX session_archive_chunks_entity_id_idx ON agentic_db_app_public.session_archive_chunks USING BTREE ( entity_id );

