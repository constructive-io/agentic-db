-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  ENABLE ROW LEVEL SECURITY;

