-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".messages_chunks FROM authenticated;


