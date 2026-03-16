-- Verify: schemas/agent_db_app_public/tables/milestones/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.milestones', 'update', 'authenticated');


