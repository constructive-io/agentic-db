-- Revert: schemas/agentic_db_app_public/tables/tool_definitions_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".tool_definitions_chunks FROM authenticated;


