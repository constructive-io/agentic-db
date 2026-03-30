-- Revert: schemas/agentic_db_app_public/tables/tags/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".tags FROM authenticated;


