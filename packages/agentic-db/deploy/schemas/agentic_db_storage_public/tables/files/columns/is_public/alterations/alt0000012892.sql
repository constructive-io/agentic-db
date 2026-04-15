-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/is_public/alterations/alt0000012892
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/is_public/column


COMMENT ON COLUMN agentic_db_storage_public.files.is_public IS E'Whether this file is publicly readable. Inherited from bucket on INSERT.';

