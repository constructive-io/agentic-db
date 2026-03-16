-- Verify: schemas/agentic_db_app_public/tables/companies/indexes/companies_name_gin_idx


SELECT verify_index('agentic_db_app_public.companies', 'companies_name_gin_idx');


