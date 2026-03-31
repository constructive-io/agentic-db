-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.contact_relationships FROM authenticated;


