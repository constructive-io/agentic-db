-- Revert: schemas/agent_db_app_public/tables/milestones/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.milestones FROM authenticated;


