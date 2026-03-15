-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  ADD COLUMN updated_at timestamptz;

