-- Verify: schemas/agent_db_app_public/tables/milestones/indexes/milestones_project_id_idx


SELECT verify_index('agent_db_app_public.milestones', 'milestones_project_id_idx');


