-- Revert: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.contacts FROM authenticated;


