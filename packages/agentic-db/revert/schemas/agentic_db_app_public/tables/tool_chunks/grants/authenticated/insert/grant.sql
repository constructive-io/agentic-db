-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.tool_chunks FROM authenticated;


