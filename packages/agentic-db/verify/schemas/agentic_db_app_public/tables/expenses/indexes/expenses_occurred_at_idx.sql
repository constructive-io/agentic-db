-- Verify: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_occurred_at_idx


SELECT verify_index('agentic_db_app_public.expenses', 'expenses_occurred_at_idx');


