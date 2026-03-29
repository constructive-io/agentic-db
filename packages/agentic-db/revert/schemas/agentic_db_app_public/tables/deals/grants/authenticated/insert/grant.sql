-- Revert: schemas/agentic_db_app_public/tables/deals/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.deals FROM authenticated;


