-- Revert: schemas/agentic_db_app_public/tables/trips/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.trips FROM authenticated;


