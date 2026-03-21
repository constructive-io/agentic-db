-- Deploy: schemas/agentic_db_app_public/tables/tool_chunks/indexes/tool_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/embedding/column


CREATE INDEX tool_chunks_entity_id_idx ON "agentic_db_app_public".tool_chunks USING BTREE ( entity_id );

