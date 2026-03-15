-- Verify: schemas/agent_db_app_public/tables/deals/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.deals', 'insert', 'authenticated');


