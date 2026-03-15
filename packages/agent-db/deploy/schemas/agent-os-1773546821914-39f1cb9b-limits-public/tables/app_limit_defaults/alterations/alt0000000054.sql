-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/alterations/alt0000000054
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  DISABLE ROW LEVEL SECURITY;

