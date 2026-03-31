-- Revert: schemas/agentic_db_app_public/tables/deal_notes/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.deal_notes FROM authenticated;


