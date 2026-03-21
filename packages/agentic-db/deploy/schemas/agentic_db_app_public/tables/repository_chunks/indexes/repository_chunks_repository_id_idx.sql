-- Deploy: schemas/agentic_db_app_public/tables/repository_chunks/indexes/repository_chunks_repository_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/table
-- requires: schemas/agentic_db_app_public/tables/chunks/indexes/chunks_repository_id_idx
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/repository_id/column


CREATE INDEX repository_chunks_repository_id_idx ON "agentic_db_app_public".repository_chunks USING BTREE ( repository_id );

