-- Revert: schemas/agentic_db_app_public/tables/contact_notes/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".contact_notes FROM authenticated;


