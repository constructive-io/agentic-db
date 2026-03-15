-- Verify: schemas/agent_db_app_public/tables/inbound_events/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.inbound_events', 'select', 'authenticated');


