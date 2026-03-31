-- Revert: schemas/agentic_db_app_public/tables/skills/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".skills FROM authenticated;


