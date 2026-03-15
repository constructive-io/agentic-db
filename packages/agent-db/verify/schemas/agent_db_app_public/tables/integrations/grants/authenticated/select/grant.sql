-- Verify: schemas/agent_db_app_public/tables/integrations/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.integrations', 'select', 'authenticated');


