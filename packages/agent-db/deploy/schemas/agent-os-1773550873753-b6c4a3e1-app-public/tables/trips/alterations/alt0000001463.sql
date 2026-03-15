-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/alterations/alt0000001463
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/trips/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".trips 
  DISABLE ROW LEVEL SECURITY;

