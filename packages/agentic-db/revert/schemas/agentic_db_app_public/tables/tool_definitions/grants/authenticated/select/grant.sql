-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.tool_definitions FROM authenticated;


