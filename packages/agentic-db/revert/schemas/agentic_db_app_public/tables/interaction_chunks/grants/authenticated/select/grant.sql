-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.interaction_chunks FROM authenticated;


