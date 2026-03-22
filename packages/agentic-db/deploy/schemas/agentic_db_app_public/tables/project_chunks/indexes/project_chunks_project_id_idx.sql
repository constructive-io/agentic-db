-- Deploy: schemas/agentic_db_app_public/tables/project_chunks/indexes/project_chunks_project_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_chunks/table
-- requires: schemas/agentic_db_app_public/tables/project_chunks/columns/project_id/column
-- requires: schemas/agentic_db_app_public/tables/project_chunks/triggers/project_chunks_enqueue_embedding_update_tg


CREATE INDEX project_chunks_project_id_idx ON "agentic_db_app_public".project_chunks USING BTREE ( project_id );

