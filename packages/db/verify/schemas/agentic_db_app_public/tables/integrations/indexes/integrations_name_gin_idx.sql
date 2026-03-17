-- Verify: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_name_gin_idx


SELECT verify_index('agentic_db_app_public.integrations', 'integrations_name_gin_idx');


