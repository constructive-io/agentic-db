-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".blueprint_chunks FROM authenticated;


