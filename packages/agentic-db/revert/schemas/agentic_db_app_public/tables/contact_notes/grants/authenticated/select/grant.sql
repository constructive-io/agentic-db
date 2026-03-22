-- Revert: schemas/agentic_db_app_public/tables/contact_notes/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.contact_notes FROM authenticated;


