-- Deploy: schemas/agentic_db_storage_public/tables/buckets/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


GRANT SELECT ON agentic_db_storage_public.buckets TO authenticated;

