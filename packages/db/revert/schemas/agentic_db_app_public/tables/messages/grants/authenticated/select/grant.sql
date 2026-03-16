-- Revert: schemas/agentic_db_app_public/tables/messages/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".messages FROM authenticated;


