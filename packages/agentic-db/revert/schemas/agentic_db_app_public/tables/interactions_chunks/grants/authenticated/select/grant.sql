-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".interactions_chunks FROM authenticated;


