-- Revert: schemas/agentic_db_app_public/tables/skill_tools/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".skill_tools FROM authenticated;


