-- Revert: schemas/agentic_db_app_public/tables/company_memories/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.company_memories FROM authenticated;


