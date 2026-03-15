-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/to_addresses/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/from_address/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".messages 
  ADD COLUMN to_addresses text[];

