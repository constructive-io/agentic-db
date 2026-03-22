-- Deploy: schemas/agentic_db_app_public/tables/runtime_config/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_config/table
-- requires: schemas/agentic_db_app_public/tables/runtime_events/columns/status/alterations/alt0000001395


GRANT UPDATE ON "agentic_db_app_public".runtime_config TO authenticated;

