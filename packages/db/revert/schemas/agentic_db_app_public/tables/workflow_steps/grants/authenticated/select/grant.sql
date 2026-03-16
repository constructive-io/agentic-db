-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".workflow_steps FROM authenticated;


