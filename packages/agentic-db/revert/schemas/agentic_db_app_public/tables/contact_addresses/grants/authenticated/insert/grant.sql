-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".contact_addresses FROM authenticated;


