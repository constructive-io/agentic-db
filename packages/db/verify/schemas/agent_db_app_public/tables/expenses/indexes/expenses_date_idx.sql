-- Verify: schemas/agent_db_app_public/tables/expenses/indexes/expenses_date_idx


SELECT verify_index('agent_db_app_public.expenses', 'expenses_date_idx');


