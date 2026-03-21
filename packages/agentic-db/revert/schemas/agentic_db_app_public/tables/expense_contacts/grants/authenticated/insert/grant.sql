-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.expense_contacts FROM authenticated;


