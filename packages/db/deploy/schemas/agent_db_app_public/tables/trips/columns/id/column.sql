-- Deploy: schemas/agent_db_app_public/tables/trips/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent_db_app_public".trips 
  ADD COLUMN id uuid;

