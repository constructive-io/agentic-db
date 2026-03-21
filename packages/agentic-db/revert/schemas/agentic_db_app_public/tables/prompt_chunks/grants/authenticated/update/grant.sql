-- Revert: schemas/agentic_db_app_public/tables/prompt_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_app_public".prompt_chunks FROM authenticated;


