-- Verify: schemas/agent_db_app_public/tables/integrations/indexes/integrations_status_idx


SELECT verify_index('agent_db_app_public.integrations', 'integrations_status_idx');


