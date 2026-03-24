-- Revert: schemas/agentic_db_app_public/tables/tags/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".tags FROM authenticated;


