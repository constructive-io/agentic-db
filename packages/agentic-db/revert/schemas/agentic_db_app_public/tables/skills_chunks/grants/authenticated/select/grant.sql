-- Revert: schemas/agentic_db_app_public/tables/skills_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.skills_chunks FROM authenticated;


