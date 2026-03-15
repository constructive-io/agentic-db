-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/columns/name/alterations/alt0000000058
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  ALTER COLUMN name SET NOT NULL;

