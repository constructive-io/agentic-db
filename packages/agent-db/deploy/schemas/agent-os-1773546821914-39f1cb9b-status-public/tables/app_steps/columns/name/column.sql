-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_steps 
  ADD COLUMN name citext;

