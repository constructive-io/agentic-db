-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_origins/alterations/alt0000012875
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_origins/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.allowed_origins IS E'Per-bucket CORS allowed origins override (NULL = inherit from storage_module/plugin defaults). Use ARRAY[''*''] for open/CDN mode.';

