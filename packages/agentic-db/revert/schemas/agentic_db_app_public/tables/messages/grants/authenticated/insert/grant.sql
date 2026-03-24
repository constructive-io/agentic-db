-- Revert: schemas/agentic_db_app_public/tables/messages/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".messages FROM authenticated;


