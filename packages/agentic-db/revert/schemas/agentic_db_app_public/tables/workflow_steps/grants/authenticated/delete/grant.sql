-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.workflow_steps FROM authenticated;


