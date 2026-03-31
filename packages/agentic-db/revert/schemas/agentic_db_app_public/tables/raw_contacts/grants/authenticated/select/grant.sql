-- Revert: schemas/agentic_db_app_public/tables/raw_contacts/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.raw_contacts FROM authenticated;


