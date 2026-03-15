-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/constraints/trips_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ADD CONSTRAINT trips_pkey PRIMARY KEY (id);

