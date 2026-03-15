-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/key/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/user_settings/columns/updated_at/alterations/alt0000001450


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".user_settings 
  ADD COLUMN key text;

