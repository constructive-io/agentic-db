-- Revert: schemas/agent_db_app_public/tables/workflow_steps/grants/authenticated/delete/grant


REVOKE DELETE ON agent_db_app_public.workflow_steps FROM authenticated;


