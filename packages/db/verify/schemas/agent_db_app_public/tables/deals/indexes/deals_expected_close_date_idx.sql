-- Verify: schemas/agent_db_app_public/tables/deals/indexes/deals_expected_close_date_idx


SELECT verify_index('agent_db_app_public.deals', 'deals_expected_close_date_idx');


