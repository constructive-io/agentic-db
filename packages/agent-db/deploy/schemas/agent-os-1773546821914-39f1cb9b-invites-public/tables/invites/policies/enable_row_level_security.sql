-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-invites-public".invites 
  ENABLE ROW LEVEL SECURITY;

