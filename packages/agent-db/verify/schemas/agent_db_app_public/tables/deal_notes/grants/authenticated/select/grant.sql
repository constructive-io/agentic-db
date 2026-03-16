-- Verify: schemas/agent_db_app_public/tables/deal_notes/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.deal_notes', 'select', 'authenticated');


