-- Deploy: schemas/agentic_db_storage_public/tables/files/indexes/files_bucket_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/column


CREATE INDEX files_bucket_id_idx ON agentic_db_storage_public.files USING BTREE ( bucket_id );

