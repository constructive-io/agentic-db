-- Verify: schemas/agentic_db_app_public/tables/milestones/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.milestones', 'insert', 'authenticated');


