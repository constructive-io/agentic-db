-- Verify: schemas/agent_db_app_public/tables/deals/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.deals', 'delete', 'authenticated');


