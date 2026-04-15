-- Deploy: schemas/agentic_db_storage_public/tables/files/indexes/files_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/created_at/column


CREATE INDEX files_created_at_idx ON agentic_db_storage_public.files ( created_at );

