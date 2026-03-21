-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".tool_chunks FROM authenticated;


