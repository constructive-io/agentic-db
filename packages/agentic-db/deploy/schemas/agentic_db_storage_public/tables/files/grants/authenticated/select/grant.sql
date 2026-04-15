-- Deploy: schemas/agentic_db_storage_public/tables/files/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


GRANT SELECT ON agentic_db_storage_public.files TO authenticated;

