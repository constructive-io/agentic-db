-- Revert: schemas/agent_db_app_public/tables/trips/grants/authenticated/select/grant


REVOKE SELECT ON agent_db_app_public.trips FROM authenticated;


