-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.raw_contacts FROM authenticated;


