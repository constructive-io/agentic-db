-- Verify: schemas/agent_db_app_public/tables/deals/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.deals', 'select', 'authenticated');


