-- Revert: schemas/agentic_db_app_public/tables/conversations/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".conversations FROM authenticated;


