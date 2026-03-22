-- Deploy: schemas/agentic_db_app_public/tables/runtime_state_chunks/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_config/columns/is_secret/alterations/alt0000001405


GRANT INSERT ON "agentic_db_app_public".runtime_state_chunks TO authenticated;

