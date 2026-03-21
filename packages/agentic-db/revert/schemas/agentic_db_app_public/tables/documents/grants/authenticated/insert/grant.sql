-- Revert: schemas/agentic_db_app_public/tables/documents/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".documents FROM authenticated;


