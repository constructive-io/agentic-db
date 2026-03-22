-- Revert: schemas/agentic_db_app_public/tables/contact_images/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".contact_images FROM authenticated;


