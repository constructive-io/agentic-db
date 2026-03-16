-- Verify: schemas/agentic_db_app_public/tables/company_notes/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.company_notes', 'select', 'authenticated');


