-- Revert: schemas/agentic_db_app_public/tables/company_notes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.company_notes FROM authenticated;


