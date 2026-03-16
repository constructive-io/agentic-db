-- Verify: schemas/agent_db_app_public/tables/event_notes/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.event_notes', 'insert', 'authenticated');


