-- Deploy: schemas/agent_db_app_public/tables/trips/columns/id/alterations/alt0000001464
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/trips/columns/id/column
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE agent_db_app_public.trips 
  ALTER COLUMN id SET NOT NULL;

