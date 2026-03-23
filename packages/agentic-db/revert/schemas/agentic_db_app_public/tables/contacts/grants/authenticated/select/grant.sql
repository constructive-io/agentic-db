-- Revert: schemas/agentic_db_app_public/tables/contacts/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.contacts FROM authenticated;


