-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/indexes/repository_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/entity_id/column


CREATE INDEX repository_chunks_entity_id_idx ON agentic_db_app_public.repository_chunks USING BTREE ( entity_id );

