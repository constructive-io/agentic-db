-- Deploy: schemas/agentic_db_app_public/tables/note_chunks/indexes/note_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/note_chunks/table
-- requires: schemas/agentic_db_app_public/tables/note_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/triggers/venue_chunks_enqueue_embedding_update_tg


CREATE INDEX note_chunks_entity_id_idx ON "agentic_db_app_public".note_chunks USING BTREE ( entity_id );

