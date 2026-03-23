-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".conversations_chunks FROM authenticated;


