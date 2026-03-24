-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".trip_hiking_trails FROM authenticated;


