-- Revert: schemas/agentic_db_app_public/tables/runtime_events/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".runtime_events FROM authenticated;


