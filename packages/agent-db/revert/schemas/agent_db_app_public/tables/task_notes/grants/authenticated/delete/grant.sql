-- Revert: schemas/agent_db_app_public/tables/task_notes/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".task_notes FROM authenticated;


