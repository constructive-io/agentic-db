-- Verify: schemas/agent_db_app_public/tables/integrations/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.integrations', 'delete', 'authenticated');


