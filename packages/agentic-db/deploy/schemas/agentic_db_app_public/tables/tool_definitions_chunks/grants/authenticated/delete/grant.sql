-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


GRANT DELETE ON "agentic_db_app_public".tool_definitions_chunks TO authenticated;

