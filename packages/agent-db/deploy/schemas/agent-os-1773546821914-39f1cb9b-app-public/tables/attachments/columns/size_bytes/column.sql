-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/size_bytes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/attachments/columns/mime_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".attachments 
  ADD COLUMN size_bytes int;

