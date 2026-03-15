-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/entity_id/alterations/alt0000000950
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/columns/entity_id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/attachable_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  ALTER COLUMN entity_id SET NOT NULL;

