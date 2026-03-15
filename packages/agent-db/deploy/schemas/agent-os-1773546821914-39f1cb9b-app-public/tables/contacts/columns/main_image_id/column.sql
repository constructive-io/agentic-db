-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/main_image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/columns/search_tsv/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  ADD COLUMN main_image_id uuid;

