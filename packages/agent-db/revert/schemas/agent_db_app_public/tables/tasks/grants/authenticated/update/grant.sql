-- Revert: schemas/agent_db_app_public/tables/tasks/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.tasks FROM authenticated;


