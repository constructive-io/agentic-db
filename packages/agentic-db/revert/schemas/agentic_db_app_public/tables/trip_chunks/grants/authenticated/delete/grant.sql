-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".trip_chunks FROM authenticated;


