-- Revert: schemas/agentic_db_app_public/tables/interactions/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".interactions FROM authenticated;


