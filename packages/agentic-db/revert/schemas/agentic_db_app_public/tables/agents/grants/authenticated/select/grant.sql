-- Revert: schemas/agentic_db_app_public/tables/agents/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".agents FROM authenticated;


