-- Verify: schemas/agent_db_app_public/tables/task_contacts/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.task_contacts', 'select', 'authenticated');


