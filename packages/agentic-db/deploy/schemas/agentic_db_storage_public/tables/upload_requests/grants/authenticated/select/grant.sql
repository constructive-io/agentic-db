-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


GRANT SELECT ON agentic_db_storage_public.upload_requests TO authenticated;

