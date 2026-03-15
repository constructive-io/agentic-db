-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/columns/updated_at/alterations/alt0000000187
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_achievements 
  ALTER COLUMN updated_at SET DEFAULT now();

