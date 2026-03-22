-- Revert: schemas/agentic_db_app_public/tables/skill_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.skill_chunks FROM authenticated;


