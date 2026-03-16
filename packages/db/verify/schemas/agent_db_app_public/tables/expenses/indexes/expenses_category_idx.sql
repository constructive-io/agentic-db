-- Verify: schemas/agent_db_app_public/tables/expenses/indexes/expenses_category_idx


SELECT verify_index('agent_db_app_public.expenses', 'expenses_category_idx');


