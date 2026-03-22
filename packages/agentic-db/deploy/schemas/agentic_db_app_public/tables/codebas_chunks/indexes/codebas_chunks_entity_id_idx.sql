-- Deploy: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/table
-- requires: schemas/agentic_db_app_public/tables/codebas_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/triggers/code_chunks_enqueue_embedding_update_tg


CREATE INDEX codebas_chunks_entity_id_idx ON "agentic_db_app_public".codebas_chunks USING BTREE ( entity_id );

