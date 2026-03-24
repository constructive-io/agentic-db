-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".skills_chunks FROM authenticated;


