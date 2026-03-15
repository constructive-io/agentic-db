-- Verify: schemas/agent_db_app_public/tables/list_items/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.list_items', 'delete', 'authenticated');


