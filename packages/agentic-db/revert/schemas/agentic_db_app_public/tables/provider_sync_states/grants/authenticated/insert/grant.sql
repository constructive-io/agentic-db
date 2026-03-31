-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".provider_sync_states FROM authenticated;


