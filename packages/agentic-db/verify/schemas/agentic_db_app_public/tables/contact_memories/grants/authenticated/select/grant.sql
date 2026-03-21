-- Verify: schemas/agentic_db_app_public/tables/contact_memories/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.contact_memories', 'select', 'authenticated');


