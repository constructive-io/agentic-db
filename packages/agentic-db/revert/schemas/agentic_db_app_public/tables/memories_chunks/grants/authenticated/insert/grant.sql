-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".memories_chunks FROM authenticated;


