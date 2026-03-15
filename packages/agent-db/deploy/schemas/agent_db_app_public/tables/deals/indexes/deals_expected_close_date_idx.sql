-- Deploy: schemas/agent_db_app_public/tables/deals/indexes/deals_expected_close_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/indexes/deals_stage_idx
-- requires: schemas/agent_db_app_public/tables/deals/columns/expected_close_date/column


CREATE INDEX deals_expected_close_date_idx ON agent_db_app_public.deals USING BTREE ( expected_close_date );

