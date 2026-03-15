-- Verify: schemas/agent_db_app_public/tables/deals/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.deals', 'update', 'authenticated');


