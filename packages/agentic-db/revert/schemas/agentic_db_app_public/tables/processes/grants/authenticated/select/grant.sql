-- Revert: schemas/agentic_db_app_public/tables/processes/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.processes FROM authenticated;


