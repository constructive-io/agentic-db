-- Revert: schemas/agentic_db_app_public/tables/provider_sync_states/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".provider_sync_states FROM authenticated;


