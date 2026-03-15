-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/content/alterations/alt0000002679
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/content/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/memories/columns/updated_at/alterations/alt0000002678


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".memories 
  ALTER COLUMN content SET NOT NULL;

