-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-users-public".users 
  ENABLE ROW LEVEL SECURITY;

