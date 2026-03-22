-- Revert: schemas/agentic_db_app_public/tables/agents/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".agents FROM authenticated;


