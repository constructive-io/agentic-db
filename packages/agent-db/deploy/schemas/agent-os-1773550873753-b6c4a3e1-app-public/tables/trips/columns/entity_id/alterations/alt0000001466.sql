-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/entity_id/alterations/alt0000001466
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/columns/entity_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".trips 
  ALTER COLUMN entity_id SET NOT NULL;

