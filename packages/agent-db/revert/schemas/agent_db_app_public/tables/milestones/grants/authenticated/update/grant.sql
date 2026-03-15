-- Revert: schemas/agent_db_app_public/tables/milestones/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.milestones FROM authenticated;


