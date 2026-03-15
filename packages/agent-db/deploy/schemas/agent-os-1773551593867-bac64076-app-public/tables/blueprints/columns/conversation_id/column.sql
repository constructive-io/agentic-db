-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/conversation_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/blueprints/columns/trigger_conditions/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".blueprints 
  ADD COLUMN conversation_id uuid;

