-- Verify: schemas/agentic_db_app_public/tables/template_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.template_chunks', 'select', 'authenticated');


