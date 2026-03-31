-- Revert: schemas/agentic_db_app_public/tables/expenses_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.expenses_chunks FROM authenticated;


