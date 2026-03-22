-- Deploy: schemas/agentic_db_app_public/tables/memory_chunks/indexes/memory_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/hiking_trail_chunks/triggers/hiking_trail_chunks_enqueue_embedding_update_tg


CREATE INDEX memory_chunks_entity_id_idx ON "agentic_db_app_public".memory_chunks USING BTREE ( entity_id );

