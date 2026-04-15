-- Deploy: schemas/agentic_db_storage_public/tables/files/indexes/files_is_public_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/is_public/column


CREATE INDEX files_is_public_idx ON agentic_db_storage_public.files USING BTREE ( is_public );

