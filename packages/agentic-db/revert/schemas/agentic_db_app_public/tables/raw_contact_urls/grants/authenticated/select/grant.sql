-- Revert: schemas/agentic_db_app_public/tables/raw_contact_urls/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".raw_contact_urls FROM authenticated;


