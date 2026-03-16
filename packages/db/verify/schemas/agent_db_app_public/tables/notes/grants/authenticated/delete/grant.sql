-- Verify: schemas/agent_db_app_public/tables/notes/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.notes', 'delete', 'authenticated');


