-- Revert: schemas/agentic_db_app_public/tables/raw_contact_phones/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".raw_contact_phones FROM authenticated;


