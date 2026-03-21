-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_title_gin_idx


CREATE INDEX billing_subscriptions_name_gin_idx ON agentic_db_app_public.billing_subscriptions USING gin ( name gin_trgm_ops );

