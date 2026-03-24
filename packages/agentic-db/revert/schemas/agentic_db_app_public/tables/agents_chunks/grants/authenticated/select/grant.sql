-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".agents_chunks FROM authenticated;


