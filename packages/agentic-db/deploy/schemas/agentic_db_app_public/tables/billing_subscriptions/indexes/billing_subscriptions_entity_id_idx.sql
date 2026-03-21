-- Deploy: schemas/agentic_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/table
-- requires: schemas/agentic_db_app_public/tables/user_settings/columns/category/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/entity_id/column


CREATE INDEX billing_subscriptions_entity_id_idx ON agentic_db_app_public.billing_subscriptions USING BTREE ( entity_id );

