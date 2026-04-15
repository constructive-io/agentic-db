-- Deploy: schemas/agentic_db_storage_public/tables/buckets/indexes/buckets_owner_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/column


CREATE INDEX buckets_owner_id_idx ON agentic_db_storage_public.buckets USING BTREE ( owner_id );

