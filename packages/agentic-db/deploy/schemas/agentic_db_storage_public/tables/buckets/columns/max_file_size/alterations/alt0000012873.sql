-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/max_file_size/alterations/alt0000012873
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/max_file_size/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.max_file_size IS E'Maximum file size in bytes allowed in this bucket (NULL = no limit, enforcement deferred)';

