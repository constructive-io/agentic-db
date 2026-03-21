-- Verify: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


SELECT verify_index('agentic_db_app_public.expenses', 'expenses_tags_gin_idx');


