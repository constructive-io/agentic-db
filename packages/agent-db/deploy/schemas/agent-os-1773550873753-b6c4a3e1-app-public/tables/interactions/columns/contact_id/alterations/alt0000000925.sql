-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/contact_id/alterations/alt0000000925
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/contact_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/interactions/columns/updated_at/alterations/alt0000000924


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".interactions 
  ALTER COLUMN contact_id SET NOT NULL;

