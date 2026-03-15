-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/contact_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/updated_at/alterations/alt0000002533


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ADD COLUMN contact_id uuid;

