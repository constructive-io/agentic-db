-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_tags_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/tags/column


CREATE INDEX billing_subscriptions_tags_gin_idx ON agentic_db_app_public.billing_subscriptions USING GIN ( tags );

