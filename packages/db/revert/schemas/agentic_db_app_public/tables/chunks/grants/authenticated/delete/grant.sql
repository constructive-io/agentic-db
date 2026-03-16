-- Revert: schemas/agentic_db_app_public/tables/chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".chunks FROM authenticated;


