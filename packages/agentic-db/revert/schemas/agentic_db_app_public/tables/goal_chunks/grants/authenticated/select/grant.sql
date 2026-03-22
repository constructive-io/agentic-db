-- Revert: schemas/agentic_db_app_public/tables/goal_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.goal_chunks FROM authenticated;


