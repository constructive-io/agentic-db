-- Deploy: schemas/agentic_db_app_public/tables/files/indexes/files_repository_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/repository_id/column
-- requires: schemas/agentic_db_app_public/tables/repository_chunks/columns/embedding/column


CREATE INDEX files_repository_id_idx ON "agentic_db_app_public".files USING BTREE ( repository_id );

