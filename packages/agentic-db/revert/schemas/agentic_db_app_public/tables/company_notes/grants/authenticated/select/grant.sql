-- Revert: schemas/agentic_db_app_public/tables/company_notes/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.company_notes FROM authenticated;


