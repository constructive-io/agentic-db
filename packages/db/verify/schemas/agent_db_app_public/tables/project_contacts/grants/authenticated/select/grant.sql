-- Verify: schemas/agent_db_app_public/tables/project_contacts/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.project_contacts', 'select', 'authenticated');


