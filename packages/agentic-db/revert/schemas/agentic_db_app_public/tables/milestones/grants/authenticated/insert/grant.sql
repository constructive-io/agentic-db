-- Revert: schemas/agentic_db_app_public/tables/milestones/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.milestones FROM authenticated;


