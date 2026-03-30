-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


GRANT INSERT ON "agentic_db_app_public".project_contacts TO authenticated;

