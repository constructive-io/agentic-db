-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/id/alterations/alt0000000859
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/id/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  ALTER COLUMN id SET NOT NULL;

