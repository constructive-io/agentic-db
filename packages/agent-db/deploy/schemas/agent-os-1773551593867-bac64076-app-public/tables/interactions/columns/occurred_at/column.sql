-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/occurred_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/type/alterations/alt0000002535


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ADD COLUMN occurred_at timestamptz;

