-- Deploy: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-users-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table


ALTER TABLE "agent-os-1773551593867-bac64076-users-public".users 
  ENABLE ROW LEVEL SECURITY;

