-- Deploy: schemas/agent_db_app_public/tables/events/indexes/events_started_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/events/table
-- requires: schemas/agent_db_app_public/tables/events/columns/started_at/column
-- requires: schemas/agent_db_app_public/tables/deals/indexes/deals_expected_close_date_idx


CREATE INDEX events_started_at_idx ON agent_db_app_public.events USING BTREE ( started_at );

