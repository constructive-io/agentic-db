-- Revert: schemas/agentic_db_app_public/tables/tool_definitions/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".tool_definitions FROM authenticated;


