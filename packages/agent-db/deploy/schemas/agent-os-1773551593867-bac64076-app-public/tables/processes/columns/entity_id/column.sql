-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".processes 
  ADD COLUMN entity_id uuid;

