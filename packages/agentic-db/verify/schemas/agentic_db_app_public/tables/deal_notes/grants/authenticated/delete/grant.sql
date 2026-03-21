-- Verify: schemas/agentic_db_app_public/tables/deal_notes/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.deal_notes', 'delete', 'authenticated');


