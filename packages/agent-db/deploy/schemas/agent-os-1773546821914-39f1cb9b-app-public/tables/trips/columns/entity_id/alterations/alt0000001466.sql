-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/entity_id/alterations/alt0000001466
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/trips/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".trips 
  ALTER COLUMN entity_id SET NOT NULL;

