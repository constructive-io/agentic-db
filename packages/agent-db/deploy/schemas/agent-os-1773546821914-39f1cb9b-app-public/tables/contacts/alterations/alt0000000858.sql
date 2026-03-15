-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/alterations/alt0000000858
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/images/columns/embedding/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DISABLE ROW LEVEL SECURITY;

