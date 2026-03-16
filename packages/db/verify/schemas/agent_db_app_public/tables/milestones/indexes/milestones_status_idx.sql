-- Verify: schemas/agent_db_app_public/tables/milestones/indexes/milestones_status_idx


SELECT verify_index('agent_db_app_public.milestones', 'milestones_status_idx');


