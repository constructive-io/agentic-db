-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/id/alterations/alt0000003073
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/trips/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".trips 
  ALTER COLUMN id SET NOT NULL;

