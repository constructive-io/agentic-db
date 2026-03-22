-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".interaction_chunks FROM authenticated;


