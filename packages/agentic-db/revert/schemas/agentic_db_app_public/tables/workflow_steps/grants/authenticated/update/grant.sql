-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.workflow_steps FROM authenticated;


