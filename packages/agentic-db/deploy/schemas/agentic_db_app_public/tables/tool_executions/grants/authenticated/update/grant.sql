-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/alterations/alt0000001494


GRANT UPDATE ON "agentic_db_app_public".tool_executions TO authenticated;

