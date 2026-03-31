-- Revert: schemas/agentic_db_app_public/tables/contact_addresses/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.contact_addresses FROM authenticated;


