-- Revert: schemas/agentic_db_app_public/tables/list_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".list_chunks FROM authenticated;


