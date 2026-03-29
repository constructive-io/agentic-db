-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.runtime_states_chunks FROM authenticated;


