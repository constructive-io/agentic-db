-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ADD COLUMN entity_id uuid;

