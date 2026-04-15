-- Deploy: schemas/agentic_db_storage_public/tables/buckets/indexes/buckets_is_public_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/column


CREATE INDEX buckets_is_public_idx ON agentic_db_storage_public.buckets USING BTREE ( is_public );

