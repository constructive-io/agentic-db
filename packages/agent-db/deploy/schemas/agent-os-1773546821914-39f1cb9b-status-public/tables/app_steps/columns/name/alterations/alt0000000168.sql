-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/columns/name/alterations/alt0000000168
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_steps/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_steps 
  ALTER COLUMN name SET NOT NULL;

