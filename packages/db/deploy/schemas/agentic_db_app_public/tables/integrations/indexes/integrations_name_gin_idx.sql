-- Deploy: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_name_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/indexes/billing_subscriptions_name_gin_idx


CREATE INDEX integrations_name_gin_idx ON "agentic_db_app_public".integrations USING gin ( name gin_trgm_ops );

