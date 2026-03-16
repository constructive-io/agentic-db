-- Verify: schemas/agent_db_app_public/tables/milestones/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.milestones', 'select', 'authenticated');


