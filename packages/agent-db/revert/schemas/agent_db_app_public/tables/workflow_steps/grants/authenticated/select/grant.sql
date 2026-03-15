-- Revert: schemas/agent_db_app_public/tables/workflow_steps/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.workflow_steps FROM authenticated;


