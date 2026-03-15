-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/url/alterations/alt0000000946
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/url/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/updated_at/alterations/alt0000000945


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ALTER COLUMN url SET NOT NULL;

