-- Deploy: schemas/agentic_db_app_public/tables/trips/indexes/trips_start_date_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/start_date/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_next_billing_date_idx


CREATE INDEX trips_start_date_idx ON agentic_db_app_public.trips USING BTREE ( start_date );

