-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".workflow_steps FROM authenticated;


