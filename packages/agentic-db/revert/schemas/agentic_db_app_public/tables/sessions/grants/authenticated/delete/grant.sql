-- Revert: schemas/agentic_db_app_public/tables/sessions/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".sessions FROM authenticated;


