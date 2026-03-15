-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  ENABLE ROW LEVEL SECURITY;

