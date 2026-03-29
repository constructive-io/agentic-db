-- Revert: schemas/agentic_db_app_public/tables/skills/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.skills FROM authenticated;


