-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  ADD COLUMN entity_id uuid;

