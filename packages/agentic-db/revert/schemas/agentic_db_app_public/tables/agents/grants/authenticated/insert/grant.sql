-- Revert: schemas/agentic_db_app_public/tables/agents/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".agents FROM authenticated;


