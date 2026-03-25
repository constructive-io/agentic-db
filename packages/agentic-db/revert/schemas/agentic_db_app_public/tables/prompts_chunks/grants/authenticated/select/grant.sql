-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".prompts_chunks FROM authenticated;


