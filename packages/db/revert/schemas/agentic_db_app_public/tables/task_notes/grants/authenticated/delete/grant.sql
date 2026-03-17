-- Revert: schemas/agentic_db_app_public/tables/task_notes/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".task_notes FROM authenticated;


