-- Revert: schemas/agent_db_app_public/tables/tasks/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.tasks FROM authenticated;


