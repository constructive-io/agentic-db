-- Deploy: schemas/agentic_db_storage_public/tables/buckets/indexes/buckets_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/updated_at/column


CREATE INDEX buckets_updated_at_idx ON agentic_db_storage_public.buckets ( updated_at );

