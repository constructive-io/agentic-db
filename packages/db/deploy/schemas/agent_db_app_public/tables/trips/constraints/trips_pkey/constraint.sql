-- Deploy: schemas/agent_db_app_public/tables/trips/constraints/trips_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/trips/table
-- requires: schemas/agent_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent_db_app_public".trips 
  ADD CONSTRAINT trips_pkey PRIMARY KEY (id);

