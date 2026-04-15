-- Deploy: schemas/agentic_db_storage_public/tables/buckets/indexes/buckets_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/created_at/column


CREATE INDEX buckets_created_at_idx ON agentic_db_storage_public.buckets ( created_at );

