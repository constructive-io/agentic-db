-- Revert: schemas/agent_db_app_public/tables/trips/grants/authenticated/update/grant


REVOKE UPDATE ON agent_db_app_public.trips FROM authenticated;


