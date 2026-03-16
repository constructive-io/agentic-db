-- Verify: schemas/agent_db_app_public/tables/expenses/indexes/expenses_merchant_idx


SELECT verify_index('agent_db_app_public.expenses', 'expenses_merchant_idx');


