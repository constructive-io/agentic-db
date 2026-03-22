-- Revert: schemas/agentic_db_app_public/tables/project_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".project_chunks FROM authenticated;


