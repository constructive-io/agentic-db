-- Deploy: schemas/agentic_db_app_public/tables/trips/constraints/trips_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agentic_db_app_public".trips 
  ADD CONSTRAINT trips_pkey PRIMARY KEY (id);

