-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.deal_contacts FROM authenticated;


