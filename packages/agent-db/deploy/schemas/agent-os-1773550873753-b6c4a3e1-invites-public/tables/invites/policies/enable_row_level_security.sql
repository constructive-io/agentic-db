-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-invites-public".invites 
  ENABLE ROW LEVEL SECURITY;

