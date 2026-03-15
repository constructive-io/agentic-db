-- Verify: schemas/agent_db_app_public/tables/list_items/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.list_items', 'select', 'authenticated');


