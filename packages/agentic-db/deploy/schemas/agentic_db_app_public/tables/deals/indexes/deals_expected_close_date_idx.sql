-- Deploy: schemas/agentic_db_app_public/tables/deals/indexes/deals_expected_close_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/deals/columns/expected_close_date/column


CREATE INDEX deals_expected_close_date_idx ON agentic_db_app_public.deals USING BTREE ( expected_close_date );

