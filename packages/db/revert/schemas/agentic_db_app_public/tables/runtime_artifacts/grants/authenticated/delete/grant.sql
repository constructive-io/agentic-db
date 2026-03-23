-- Revert: schemas/agentic_db_app_public/tables/runtime_artifacts/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".runtime_artifacts FROM authenticated;


