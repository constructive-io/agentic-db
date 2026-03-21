-- Revert: schemas/agentic_db_app_public/tables/template_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".template_chunks FROM authenticated;


