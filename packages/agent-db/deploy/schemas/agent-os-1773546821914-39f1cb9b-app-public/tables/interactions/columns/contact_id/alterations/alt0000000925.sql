-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/contact_id/alterations/alt0000000925
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/contact_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/interactions/columns/updated_at/alterations/alt0000000924


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".interactions 
  ALTER COLUMN contact_id SET NOT NULL;

