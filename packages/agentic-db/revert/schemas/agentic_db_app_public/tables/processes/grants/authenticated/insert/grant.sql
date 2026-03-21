-- Revert: schemas/agentic_db_app_public/tables/processes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.processes FROM authenticated;


