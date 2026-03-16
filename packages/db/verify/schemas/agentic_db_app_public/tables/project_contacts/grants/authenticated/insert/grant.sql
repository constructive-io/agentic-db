-- Verify: schemas/agentic_db_app_public/tables/project_contacts/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.project_contacts', 'insert', 'authenticated');


